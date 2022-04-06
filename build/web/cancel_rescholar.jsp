<%@page import="java.sql.*"%>
<head>
    
</head>
<%
    String id=request.getParameter("id");
    
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="delete from RESEARCHDB where EMPLOYEEID="+id+"";
            Statement st=con.createStatement();
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                response.sendRedirect("researchscholar_approve_membershipdetail.jsp?status=Registration Cancelled");
            }
            else
            {
                out.println("failed");
            }
%>
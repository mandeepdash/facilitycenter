<%@page import="java.sql.*"%>
<head>
    
</head>
<%
    String id=request.getParameter("id");
    
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="delete from facultydb where EMPLOYEEID="+id+"";
            Statement st=con.createStatement();
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                response.sendRedirect("faculty_approve_membershipdetail.jsp?status=Registration Cancelled");
            }
            else
            {
                out.println("failed");
            }
%>
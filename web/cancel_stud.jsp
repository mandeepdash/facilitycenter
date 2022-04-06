<%@page import="java.sql.*"%>
<head>
    
</head>
<%
    String regdno=request.getParameter("regdno");
    
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="delete from studentdb1s where regno="+regdno+"";
            Statement st=con.createStatement();
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                response.sendRedirect("student_approve_membershipdetail.jsp?status=Registration Cancelled");
            }
            else
            {
                out.println("failed");
            }
%>
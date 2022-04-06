<%@page import="java.sql.*"%>
<head>
    
</head>
<%
    String docid=request.getParameter("docid");
    
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="update PUBLISH_DOCUMENT1 SET STATUS='1' where DOCUMENT_ID='"+docid+"'";
            Statement st=con.createStatement();
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                response.sendRedirect("student_approve_publishdetail.jsp?status=Publication Approved");
            }
            else
            {
                out.println("not approved");
            }
%>
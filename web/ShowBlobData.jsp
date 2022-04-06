<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
         <%
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); //put type 4 driver jar file in lib directory
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "project", "facilitycenter");
            String sql="select * from PUBLISH_DOCUMENT1";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
        %>
        <h1>SHOW FILES</h1>
        <table border="1">
            <thead>
                <tr>
                      <th> File </th> <th> TYPE </th> 
                </tr>
            </thead>
            
            <%
                    while(rs.next()){                        
                        
                        int fileId=rs.getInt("FILE_ID");
                        String contentType=rs.getString("CHOOSE_DOCUMENT");
             %>
                <tr>
                    
                   	
                    <td>
                   <a href="GetUploadedFile?id=<%=fileId %>" >Download</a> 
                       
                        <%--<img src='GetUploadedFile?id=<%=fileId %>' width='100' height='100' />--%>	
                    </td> 
		<td><%=contentType%></td>   
                   			
					
                     <% }
                    %>
            </tbody>
        </table>
            
    </body>
</html>

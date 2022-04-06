
<%@page import="java.sql.*"%>
<head>
<title>FACILITY CENTER</title>

</head>
<body>

    

<%!

String doc_id;
String pubname;

String phno;
String fileName;
%>
<center>
    <br>
    <br>
<h1>SHOW DOCUMENT DETAILS</h1>

        <table border="1">
            <thead>
                <tr>
                    <th> DOCUMENTID </th> 
                    <th>PUBLISHER NAME </th>
                     <th>PHONE </th>
                      <th>FILE </th>
                      
                </tr>
            </thead>
<%
String doc_id=request.getParameter("document_id");
           
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="select * from  PUBLISH_DOCUMENT1 where DOCUMENT_ID='"+doc_id+"' ";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
                    doc_id=rs.getString("DOCUMENT_ID");
                    pubname=rs.getString("name");
                    phno=rs.getString("PHONE_NO");
                          int fileId=rs.getInt("FILE_ID");
                        String contentType=rs.getString("CHOOSE_DOCUMENT");
                        
                        
           
      %>     
           
        

  

   
        <tr>
            
           
    <td> <%=doc_id%></td>
    
             <td> <%=pubname%></td>
             
     
             <td><%=phno%></td>
<td>    
    <a href="GetUploadedFile?id=<%=fileId %>" >Download</a> 
</td>
    
        </tr>
         <% }
                    %>
              
              
        </table></center>
        
</body>



<%@page import="java.sql.*"%>
<head>
        <script type="text/javascript" src="./jsFileUpload/jquery.js"></script>
<script  type="text/javascript" src="./jsFileUpload/vendor/jquery.ui.widget.js"></script>
<script  type="text/javascript" src="./jsFileUpload/jquery.iframe-transport.js"></script>
<script  type="text/javascript" src="./jsFileUpload/jquery.fileupload.js"></script>
  <script>
$(function () {    
	var jqXHR = $('#fileField').fileupload({
        dataType: 'json',
        url: './ImageUploadServlet', 
		maxFileSize: 5000000,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,		
        progress:function(e, data) {
            var pec=parseInt(data.loaded / data.total * 100, 10);
            if(pec==99)   /*  for Firefox: as Progress stops at 99% */
                pec=pec+1;
         	$('#myfileL').html('Upload Status :  '+ pec +' %');
        },
        done: function (e, data) {
           $.each(data.result, function (key, value) {
				if(key=="name")
				{   
					$("#myfile").val(value); // set the file name as hidden field value					
					$("#myfileL").html("<img src='./uploadedfiles/"+value+"' width='100' height='100' />");				
				}
				if(key=="error")
				{
					$("#myfileL").html(value);
				}
            });
        }
    });
});
</script>
<script language="javascript" type="text/javascript">
        var hexvalues
= Array("A", "B", "C", "D", "E", "F", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9");

        function flashtext() {

            var colour = '#';
            for (var counter = 1; counter <= 6; counter++) {
                var hexvalue = hexvalues[Math.floor(hexvalues.length * Math.random())];

                colour = colour + hexvalue;

            }
            document.getElementById("flashingtext").style.color = colour;
        }

        setInterval("flashtext()", 800);
    </script>
    
    </head>
    <center>
<form action="publish_document">
    <table>
        
         
        <tr>
            <td>Document Category:</td>
            <td><select name="cat">
               <option>choose category:</option>
            <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project" , "facilitycenter");
        String sql="select * from Category_tbl";
        String cat;
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
       %>
       <%
        while(rs.next()) {
             cat=rs.getString("category");
         %>
         <option value="<%=cat%>"><%=cat%></option>
               
            <%
   }
  %>
        </select></td>
        </tr>
         <tr>
            <td>Share With:</td>
            <td><select name="share_with">
                    <option value="student">Student</option>
                    <option value="faculty">Faculty</option>
                    <option value="research scholar">Research Scholar</option>
                </select>
            </td>
         </tr>
        </tr>
         <tr>
            <td>Choose Document:</td>
            <td><input id="fileField" type="file" name="files[]"  />
 <input type="hidden" name="myfile" id="myfile" />
<label id="myfileL"></label></td>
        </tr>
         <tr>
            <td>privileges:</td>
            <td><input type="checkbox" name="br" value="readonly" />readonly
                <input type="checkbox" name="br" value="download" />download
                <input type="checkbox" name="br" value="share" />edit and use with due credit</td>
        </tr>
        <tr>
            <td>Publisher Id:</td>
            <td><input type="text" name="publisherid" value=""></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" value=""></td>
        </tr>
        <tr>
            <td>Phone No:</td>
            <td><input type="text" name="phoneno" value=""></td>
        </tr>
         <tr>
            <td colspan="2"><input type="submit" value="Upload Document"></td>
        </tr>
        
        
    </table>
</form>
    </center>
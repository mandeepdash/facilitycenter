<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!--
Template Name: Yammoe
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>FACILITY CENTER</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/lok.jpg' );"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <p class="fl_left nospace"><i class="fas fa-phone"></i> +91 9439331662</p>
    <!--  <p class="fl_right nospace"><a class="btn" href="#">Get A Quote</a></p>-->
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear">
      <div id="logo" class="fl_left"> 
        <!-- ################################################################################################ -->
        <h1>FACILITY CENTER</h1>
        <!-- ################################################################################################ -->
      </div>
      <nav id="mainav" class="fl_right"> 
        <!-- ################################################################################################ -->
        <ul class="clear">
         <li class="active"><a href="index.html">HOME</a></li>
          <li><a href="student_publish_document.jsp">Publish Document</a></li>
          <li><a href="student_search_document.jsp">Search Document</a></li>
          <li><a href="index.html">Logout</a></li>
         
      </nav>
    </header>
  </div>
  <div > 
    <!-- ################################################################################################ -->
    <article>
      <p style="padding-bottom:40px;"></p>
      <h3 class="heading"></h3>
      <h4 class="heading"></h4>
      <p> </p>
      <!--<footer>
        <ul class="nospace inline pushright">
          <li><a class="btn" href="#">LOGIN</a></li>-->
         <!-- <li><a class="btn inverse" href="#">Tristique</a></li>-->
        <!--</ul>
      </footer> -->
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  
  <!-- ################################################################################################ -->
</div>




<div class="bgded overlay" style="background-image:url('images/demo/gallery/oiu.jpg;')">
  <section class="hoc container clear">
    <div class="points group">

<head>
        <script type="text/javascript" src="./jsFileUpload/jquery.js"></script>
<script  type="text/javascript" src="./jsFileUpload/vendor/jquery.ui.widget.js"></script>
<script  type="text/javascript" src="./jsFileUpload/jquery.iframe-transport.js"></script>
<script  type="text/javascript" src="./jsFileUpload/jquery.fileupload.js"></script>
  <script>
$(function () {    
    $('#fileField').fileupload({
        dataType: 'json',
        url: 'FileUploadServlet',
        //url: 'ImageUploadServlet',
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
					$("#myfileL").html(value);						
					//$("#myfileL").html("<img src='uploadedfiles/"+value+"' width='100' height='100' />");							
				} 
				if(key=="size")
                                {  
                                    $("#myfileL").append(" ("+ value+ ")");
                                }  
				if(key=="type")
                                {   
                                    $("#contentType").val(value); 
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
    <center>
<form action="student_publish_document" method="post">
    <table>
        
         
        <tr>
            <td>Document Category:</td>
            <td><select name="cat">
               <option>Choose Category</option>
            <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
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
                    <option value="select">Select</option>
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
            <td><input type="checkbox" name="br" value="readonly" />Read Only
                <br>
                <input type="checkbox" name="br" value="download" />Download
                <br>
                <input type="checkbox" name="br" value="edit" />Edit and use with due credit
                <br>
                <input type="checkbox" name="br" value="edit without reference" />Edit and use without reference
                <br>
                <input type="checkbox" name="br" value="share" />Re-share with others</td>
        </tr>
        <tr>
            <td>Publisher Id:</td>
            <td><input type="text" name="publisherid" value=""></td>
        
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value=""></td>
        </tr>
        <tr>
            <td>Phone No:</td>
            <td><input type="text" name="phoneno" value=""></td>
        </tr>
        
         <tr>
         
             <td colspan="2"><center><input type="submit" value="Upload Document" style="width:150px; height:32px; background-color:#039518;border:0px; font:16px Arial, Helvetica, sans-serif; color:#FFFFFF; cursor: pointer" ></center></td>
        </tr>
        
    </table>
</form>
    </center>
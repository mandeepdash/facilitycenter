
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!DOCTYPE html>
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
         <li><a href="add_notice.jsp">Compose Notice</a></li>
          <li><a href="faculty_publish_doc.jsp">Publish Document</a></li>
          <li><a href="faculty_search_document.jsp">Search Document</a></li>
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

        <%
    String slno=request.getParameter("id");
    
   %>
        <h1>Your document Id is <%=slno%></h1>
</html>

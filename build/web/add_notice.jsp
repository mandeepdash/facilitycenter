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
<script src="datetimepicker_css.js"></script>   
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
          <li><a href="faculty_publish_document.jsp">Publish Document</a></li>
          <li><a href="faculty_search_document.jsp">Search Document</a></li>
          
          <li><a href="index.html">Logout</a></li>
      
        <!-- ################################################################################################ -->
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
      <!-- ################################################################################################ -->
      <div class="sectiontitle">
        <!--<p class="nospace font-xs">An investment in knowledge pays the best intrest.</p>-->
        <h1 class ="heading font-x3">Add Notice</h1>
      </div>
         
          <center>
          

	<div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
        	<form class="form-horizontal" role="form" method="get" action="add_notice" >
                
   
        <div class="form-group" >
                  <label class="control-label col-sm-4" for="email">Date</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="date" id="demo1" placeholder=" " required="required">
                  
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('demo1','ddMMMyyyy')" style="cursor:pointer"/>
            </div>
                  <div class="col-sm-2"></div>
                  </div>
        
    <div class="form-group" >
                  <label class="control-label col-sm-4" for="email">Subject:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder=" " required="required">
                   </div>
                  <div class="col-sm-3"></div>
                  </div>
    
                  <div class="form-group">
                  <label class="control-label col-sm-4" for="email">content:</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="content" id="content" placeholder=" " required="required">
                   </div>
                  <div class="col-sm-3"></div>
                  </div>
   
        
         <div class="form-group">
                  <label class="control-label col-sm-4" for="email">Share With:</label>
                  <div class="col-sm-5">
                    <select name="share_with" id="branch" class="form-control">
                       <option value="select">Select</option>
                    <option value="student">Student</option>
                    <option value="faculty">Faculty</option>
                    <option value="researchscholar">Research Scholar</option>
                      
                    </select>
                  </div>
                  <div class="col-sm-3"></div>
                </div>
                   
        </<div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                     <input type="submit" class="btn btn-success" name="Register" value="Add Notice" style="cursor:pointer;" />
                  </div>
                </div>
           
        </div>
        <div class="col-md-3"></div>
    </div>
      
  </section>
</div>

<%@page import="java.sql.*"%>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            Statement st=con.createStatement();
    String status1="";
    String user_id=request.getParameter("user_id");
    String email_id=request.getParameter("email_id");
    
    if(user_id!=null){
    String sql="select password from USERDB where REGNO='"+user_id+"' ";
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {
        String password=rs.getString("password");
       


        status1="Your password has been sent to your email id!";
        out.println(status1);

        
                
     }
    else
        {
        status1="Invalid User ID";
        out.println(status1);
        }

    }
%>
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
<style type="text/css">
.pass_input{width:155px; height:21px; border:solid 1px #95E18C; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;}

.frm_txt{color:#000000; font-family:Arial, Helvetica, sans-serif; font-size:16px; text-decoration:none;}
.input{width:155px; height:17px; border:solid 1px #95E18C; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#333333;}
.footer_txt{color:#000000; font-family:Arial, Helvetica, sans-serif; font-size:12px; text-decoration:none;}

body{background-image:url(images/login_bg.jpg); background-repeat:repeat-x;}
.user{color:#222222; font-family:Arial, Helvetica, sans-serif; font-size:12px;}
.login_txt{color:#ffffff; font-family:Arial, Helvetica, sans-serif; font-size:28px;}


</style>
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
          <li><a href="aboutus.html">ABOUT US</a></li>
         
          <li><a href="index.html">LOGOUT</li>
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
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->


<div class="bgded overlay" style="background-image:url('images/demo/gallery/oiu.jpg;')";>
  <section class="hoc container clear">
    <div class="points group"> 
      <!-- ################################################################################################ -->
      <div class="sectiontitle">
        <!--<p class="nospace font-xs">An investment in knowledge pays the best intrest.</p>-->
       
      </div>
      

<form>
<table width="300" border="1"class="table2">
  
      <tr>
    	<td width="29%" class="frm_txt">Username</td>
        <td width="71%"><input type="text" class="pass_input" name="user_id" style="height:30px; width:200px; font:20px Arial, Helvetica, sans-serif" /></td>
    </tr>
    <tr>
    	<td width="29%" class="frm_txt">Emailid</td>
        <td width="71%"><input type="text" class="pass_input" name="email_id" style="height:30px; width:200px; font:20px Arial, Helvetica, sans-serif" /></td>
    </tr>
   
  
 <tr>
    	<td align="center" colspan="2"><input type="submit" name="submit" value="Retrive password" style="width:150px; height:32px; background-color:#039518;border:0px; font:16px Arial, Helvetica, sans-serif; color:#FFFFFF; cursor: pointer" /></td>
        
    </tr>
    <td colspan="2" align="right">&nbsp;</td>
</table>
</form> 
</center>
        </ul>
      </figure>
      
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!--<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');">
  <section id="testimonials" class="hoc container clear">--> 
    <!-- ################################################################################################ -->
    <!--<div class="sectiontitle">
      <p class="nospace font-xs">Sed libero class aptent taciti</p>
      <h6 class="heading font-x2">Sociosqu ad litora torquent per</h6>
    </div>
    <article class="one_half first">
      <figure class="clear"><img src="images/demo/100x100.png" alt="">
        <figcaption>
          <h6 class="heading">E. Doe</h6>
          <em>Conubia nostra per inceptos</em></figcaption>
      </figure>
      <blockquote>Himenaeos curabitur feugiat etiam in enim sed felis interdum lobortis phasellus nec eros ut arcu sollicitudin pellentesque curabitur porta justo vitae molestie semper ligula.</blockquote>
    </article>
    <article class="one_half">
      <figure class="clear"><img src="images/demo/100x100.png" alt="">
        <figcaption>
          <h6 class="heading">F. Doe</h6>
          <em>Neque euismod nisi non</em></figcaption>
      </figure>
      <blockquote>Suscipit sem ante quis tortor curabitur ornare justo ut lobortis pulvinar diam elit accumsan felis non suscipit nunc erat sed justo etiam luctus imperdiet mauris donec id sapien.</blockquote>
    </article>-->
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Bottom Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/images.jpg');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row4">
    <footer id="footer" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-50">
        <div class="one_quarter first">
          <h6 class="heading">Facility Center</h6>
          <p>Edumark is committed to high quality research and provides outstanding facilities and a supportive environment for the students. [<a href="#">&hellip;</a>]</p>
          <ul class="faico clear">
            <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
            <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
            <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
            <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
            <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Courses</h6>
          <ul class="nospace linklist">
            <li><a href="#">Computer Science</a></li>
            <li><a href="#">Electrical</a></li>
            <li><a href="#">Civil</a></li>
            <li><a href="#">Mechanical</a></li>
            <!--<li><a href="#">UI/UX</a></li>-->
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Resouces</h6>
          <p class="nospace btmspace-15">
            <li><a href="#"> Video Lectures</a></li>
            <li><a href="#"> Assignment</a></li>
            <li><a href="#"> Notes</a></li>
            <li><a href="#">Ebooks</a></li>
            <li><a href="#">Faculty Consultant</a></li></p>
         <!-- <form action="#" method="post">
            <fieldset>
              <legend>Newsletter:</legend>
              <input class="btmspace-15" type="text" value="" placeholder="Name">
              <input class="btmspace-15" type="text" value="" placeholder="Email">
              <button class="btn" type="submit" value="submit">Submit</button>
            </fieldset>
          </form>-->
        </div>
        <div class="one_quarter">
          <h6 class="heading">Photos</h6>
          <ul class="nospace clear latestimg">
            <li><a class="imgover" href="#"><img src="de.jpg" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="sos.jpg" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="se.jpg" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="uy.jpg" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="ed.jpg" alt=""></a></li>
            <!--<li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
            <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>-->
          </ul>
        </div>
      </div>
      <!-- ################################################################################################ -->
      <hr class="btmspace-50">
      <!-- ################################################################################################ -->
      <nav>
        <ul class="nospace">
          <li><a href="index.html"><i class="fas fa-lg fa-home">Home</i></a></li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Services</a></li>
        
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </footer>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row5">
    <div id="copyright" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <p class="fl_left">Copyright &copy; 2021 - All Rights Reserved - <a href="#">Facility center</a></p>
      <p class="fl_right">Designed by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">Rakesh,Amrita,Harisankar,mandeep,Aisha</a></p>
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Bottom Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
</html>
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
</head>
<body id="top">

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
        
        <%!
          String userid;
          String name;
           %>
           
           <%
               userid=(String)session.getAttribute("userid");
               
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
               String sql="select * from RESEARCHDB where EMPLOYEEID="+userid+"";
               Statement st=con.createStatement();
               ResultSet rs=st.executeQuery(sql);
               if(rs.next())
               {
                   
                   name=rs.getString("name");
               }
            %>
            <h2><font color="#757dbd">Welcome&nbsp;<%=name%></font></h2>
        <!-- ################################################################################################ -->
      </div>
      <nav id="mainav" class="fl_right"> 
        <!-- ################################################################################################ -->
        <ul class="clear">
          <li class="active"><a href="index.html">HOME</a></li>
          <li><a href="researchscholar_publish_document.jsp">Publish Document</a></li>
          <li><a href="researchscholar_search_document.jsp">Search Document</a></li>
          
          <li><a href="index.html">Logout</a></li>
      
        <!-- ################################################################################################ -->
      </nav>
    </header>
  </div>
  <br><br><br>
  <div > 
    <!-- ################################################################################################ -->
    <article>
      <p style="padding-bottom:40px;"></p>
      <h3 class="heading"></h3>
      <h4 class="heading"></h4>
      <p> </p>
      
    </article>
    <!-- ################################################################################################ -->
  </div>
  
  
  <!-- ################################################################################################ -->
</div>

<div class="bgded overlay" style="background-image:url('images/demo/gallery/oiu.jpg;')";>
  <section class="hoc container clear">
    <div class="points group"> 
      <!-- ################################################################################################ -->
      <div class="sectiontitle">
        <!--<p class="nospace font-xs">An investment in knowledge pays the best intrest.</p>-->
        <h1 class ="heading font-x3">Welcome to  Research Scholar Profile page</h1>
      </div>
      <!--<figure class="one_half first">
        <ul class="nospace clear">
          <li><a href="#"><i class="fab fa-fly"></i></a>
            <h6 class="heading">LifeTime video access</h6>-->
            <p>It is a common location to upload and share notes, ideas and
              resources. Facility center is useful for an educational institute
              for keeping a better coordination between the faculty
              members and students.</p>
        <!--  </li>
          <li><a href="#"><i class="fab fa-audible"></i></a>
            <h6 class="heading">Live supports</h6>-->
            <p>Class notes, e-books, notices, sample
              papers, sample projects etc can be uploaded by faculty
              members targeting a specific group of students which can be
              seen and accessed by only the intended student.</p>
          <!--</li>
          <li><a href="#"><i class="fas fa-umbrella-beach"></i></a>
            <h6 class="heading">Expert teachers</h6>-->
            <p>Students and
              faculties can also use this facility to share their works within
              their friends and colleagues for peer review. Any item can be
              shared with restriction or may be with a global access</p>
          </li>
        </ul>
      </figure>
      
  </section>
</div>

  </section>
</div>

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
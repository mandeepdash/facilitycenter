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
          <li><a href="approve_membership.jsp">Manage Membership</a></li>
          <li><a href="approve_publish.jsp">Manage Publication</a></li>
          <li><a href="view_category.jsp">Manage Category</a></li>
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
        <h1 class ="heading font-x3">View Category</h1>
      </div>
          <center>
          

	<% 
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
        String sql="select * from category_tbl";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql); 
        %>
<center>
    <a href="add_category.jsp" class="btn btn-default" role="button" style="width: 400px; height: 40px; background-color:green;border:0px; font:16px Arial, Helvetica, sans-serif; color:#FFFFFF; cursor: pointer "> ADD NEW CATEGORY </a>      
    <table border="1"  class="table table-striped" >
        
        <br><br><br>
        <tr>
            
            <td><u><b><center>CATEGORY</center></b></u></td>
    <td colspan="2"><u><b><center> ACTION </center></b></u></td>
        </tr>
        </center>
        <%
            while(rs.next())
            {
                String no=rs.getString("id");
                String ct=rs.getString("category");
        %>
        <tr>
           
            <td><br><%=ct%></td>
            <td><br><a href="edit_category.jsp?id=<%=no%>"><img src="images/edit.png" style="width:20px;"border="0" title="Edit" /></a></td>
            
            <td><br><a href="delete_category?id=<%=no%>"  onClick="return confirm('Are you sure to delete');" style="width:30px;"><img src="images/Delete-icon.png"  style="width:20px;"border="0" title="Delete" /></a></td>
        </tr>
        <%
        }
        %>
        </table>
  </section>

</center>
        </ul>
      </figure>
      
  </section>
</div>

  </section>
</div>
</html>
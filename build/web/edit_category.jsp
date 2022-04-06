<%@page import="java.sql.*" %>

<!DOCTYPE html>

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
  
</div>

<%!
          String id;
          String category;
     
           %>
        <% 
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
         id=request.getParameter("id");
        String sql="select * from category_tbl where id="+id+" ";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql); 
        if(rs.next())
        {
            category = rs.getString("category");
        }
     
        %>



<div class="bgded overlay" style="background-image:url('images/demo/gallery/oiu.jpg;')";>
  <section class="hoc container clear">
    <div class="points group"> 
      <!-- ################################################################################################ -->
      <div class="sectiontitle">
       <h1 class ="heading font-x3">EDIT CATEGORY</h1>
       <br><br><br>
       
       <center>
                <form action="edit_category">
        <input type="hidden" name="id" value="<%=id%>"/>
        
            <table>
                
                   <div class="form-group" >
                       <label class="control-label col-sm-4" for="email"><h3><b>Category:</b></h3></label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="subject" id="subject" placeholder=" " required="required">
                   </div>
                  <div class="col-sm-3"></div>
                  </div>
                <br><br><br>
                  </<div class="form-group">        
                  <div class="col-sm-offset-4 col-sm-2">
                     <input type="submit" class="btn btn-success" name="submit" value="Edit" style="width:160px; height:32px; background-color:#039518;border:0px; font:16px Arial, Helvetica, sans-serif; color:#FFFFFF; cursor: pointer" />
                  </div>
                </div>
                
            </table>
      
          </form>
    </body>
</html>
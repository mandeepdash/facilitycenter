<%@page import="java.sql.*"%>
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


<%!

String facname;
String facemail;
String facphno;
String facid;


%>

<br><br><br>

<%
//String regdno=(String)session.getAttribute("regno");
  
       String utype=request.getParameter("utype");       
      %>
     
      <%
      String status=request.getParameter("status");
      if(status!=null)
      {
      %>
<center>
    <b style="color: red" ><%=status%></b>
</center><br>
<%
}
%>
      
      
      <form action="" method="get">
          <table align="center" border="1">
          <tr>
              <th>ID</th>
              <th>NAME</th>
              <th>EMAIL</th>
              <th>PHONENO</th>
              <th colspan="2">Action</th>
          </tr>
      
      
      <%
             
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="select * from FACULTYDB where STATUS=0";
        
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                 facid=rs.getString("EMPLOYEEID");
                 facname=rs.getString("name");
                 facemail=rs.getString("EMAIL");
                 facphno=rs.getString("CONTACTNO");
                 
        %>
        
        <tr>
            <td><%=facid%></td>
             <td><%=facname%></td>
              <td><%=facemail%></td>
               <td><%=facphno%></td>
               <td><a href="approve_fac.jsp?id=<%=facid%>"><img src="images/approve-icon.jpg" style="width:20px;"border="0" title="approve" /></a></td>
               <td><a href="cancel_fac.jsp?id=<%=facid%>"><img src="images/Delete-icon.png" style="width:20px;"border="0" title="delete" /></a></td>
                     
        </tr>
        <%
           }
      %>     
   
      </table>
</form>

</body>
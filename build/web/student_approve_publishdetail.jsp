<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <!DOCTYPE html>

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


<%!

String docid;
String doccategory;
String sharewith;
String privilages;

%>

<br><br><br>

<%
//String regdno=(String)session.getAttribute("regno");
  String utype=request.getParameter("share_with");         
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="select * from  PUBLISH_DOCUMENT1 where STATUS=0 and SHARE_WITH='student'";
            
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
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
              <th>DOCUMENT ID</th>
              <th>DOCUMENT CATEGORY</th>
              <th>SHARE WITH</th>
              <th>PRIVILEGE</th>
              <th colspan="2">ACTION</th>
          </tr>
        <%
            while(rs.next())
            {
                 docid=rs.getString("DOCUMENT_ID");
                 doccategory=rs.getString("DOC_CATEGORY");
                 sharewith=rs.getString("SHARE_WITH");
                 privilages=rs.getString("PRIVILEGE");
                 
        %>
        
        <tr>
            <td><%=docid%></td>
             <td><%=doccategory%></td>
              <td><%=sharewith%></td>
               <td><%=privilages%></td>
               <td><a href="student_publishdocument_approve.jsp?docid=<%=docid%>"><img src="images/approve-icon.jpg" style="width:20px;" border="0" title="publish" /></a></td>
               <td><a href="student_publishdocument_cancel.jsp?docid=<%=docid%>"><img src="images/Delete-icon.png" style="width:20px;" border="0" title="cancel" /></a></td>
                  
                     
        </tr>
        <%
            }
      %>     
   
</table>
</form>

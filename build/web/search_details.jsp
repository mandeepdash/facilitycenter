
<%@page import="java.sql.*"%>
<head>
<title>FACILITY CENTER</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

    <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/lok.jpg' ); height: 300px"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <p class="fl_left nospace"><i class="fas fa-phone"></i> +91 9439331662</p>
    <!--  <p class="fl_right nospace"><a class="btn" href="#">Get A Quote</a></p>-->
      <!-- ################################################################################################ -->
    </div>
  </div>
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
          <li><a class="drop" href="#">REGISTER</a>
         <ul>
              <li><a href="student_reg.jsp">Student</a></li>
              <li><a href="faculty_reg.jsp">Faculty</a></li>
              <li><a href="researchscholar_reg.jsp">Research Scholar</a></li>
            </ul>
          </li>
          <li><a href="aboutus.html">ABOUT US</a></li>
          
          <li><a href="login.jsp">LOGIN</a></li>
       
           
        </ul>
        
      </nav>
    </header>
  </div>
   
    <div id="pageintro" class="hoc clear"> 

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

String doc_id;
String pubname;

String phno;
String fileName;
%>
<center>
<div class="bgded overlay" style="background-image:url('images/demo/gallery/oiu.jpg;');">
  <section class="hoc container clear">
    <div class="points group"> 
      <!-- ################################################################################################ -->
      <div class="sectiontitle">
         <h1 class ="heading font-x3">SHOW DOCUMENT DETAILS</h1>
      </div>

        <table border="1">
            <thead>
                <tr>
                    <th> DOCUMENT ID </th> 
                    <th>PUBLISHER NAME </th>
                     <th>PHONE </th>
                      <th>DOCUMENT </th>
                      
                    
                </tr>
            </thead>
<%
String doc_id=request.getParameter("document_id");
           
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="select * from  PUBLISH_DOCUMENT1 where DOCUMENT_ID='"+doc_id+"' ";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
                    doc_id=rs.getString("DOCUMENT_ID");
                    pubname=rs.getString("name");
                    phno=rs.getString("PHONE_NO");
                fileName=rs.getString("CHOOSE_DOCUMENT");
           
      %>     
            <form action="">
                    
                    
              </form>
        

%>  
        <tr>
            
           
    <td> <%=doc_id%></td>
    
             <td> <%=pubname%></td>
             
                  <td><%=phno%></td>
<td>
		<img src="uploadedfiles/<%=fileName%>" width="100" height="100" />
</td>
    
        </tr>
         <% }
                 
         %>
                   
        </table></center>
        




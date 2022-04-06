<%@page import="java.sql.*"%>
<head>

</head>
<body>

<br><br><br>

<%
//String regdno=(String)session.getAttribute("regno");
  String utype=request.getParameter("share_with");         
     
  if(utype.equals("faculty"))
  {
      response.sendRedirect("faculty_approve_publishdetail.jsp?utype="+utype);
  }
  if(utype.equals("student"))
          {
              response.sendRedirect("student_approve_publishdetail.jsp?utype="+utype);
          }
  if(utype.equals("researchscholar"))
  {
      response.sendRedirect("researchscholar_approve_publishdetail.jsp?utype="+utype);
      
  }
   %>         
           
</body>
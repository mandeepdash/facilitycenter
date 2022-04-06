<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="css/bootstrap.min.css">
 <script src="datetimepicker_css.js"></script>
</head>
    <jsp:include page="student_ubody.jsp" />
    <body>
        <table>
           <center>
          <div class="row">
    	<div class="col-md-3"></div>
        <div class="col-md-6">
           
               <form class="form-horizontal" role="form" method="get" action="search_details.jsp">
                   
                   
                   <div class="form-group">
                       <label class="control-label col-sm-4" for="category"><b><font size="4">DOCUMENT ID:</font></b></label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" name="document_id" id="email" placeholder=" " required="required">
                  </div>
                    
                  <div class="col-sm-3"><input type="submit" class="btn btn-success" name="SEARCH" value="SEARCH" style="cursor:pointer;" />
           </div>
                </div>
  
    </body>
</html>

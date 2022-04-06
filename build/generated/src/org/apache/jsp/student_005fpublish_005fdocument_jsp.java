package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class student_005fpublish_005fdocument_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("Template Name: Yammoe\n");
      out.write("Author: <a href=\"https://www.os-templates.com/\">OS Templates</a>\n");
      out.write("Author URI: https://www.os-templates.com/\n");
      out.write("Copyright: OS-Templates.com\n");
      out.write("Licence: Free to use under our free template licence terms\n");
      out.write("Licence URI: https://www.os-templates.com/template-terms\n");
      out.write("-->\n");
      out.write("<html lang=\"\">\n");
      out.write("<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->\n");
      out.write("<head>\n");
      out.write("<title>FACILITY CENTER</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n");
      out.write("<link href=\"layout/styles/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body id=\"top\">\n");
      out.write("<!-- ################################################################################################ -->\n");
      out.write("<!-- ################################################################################################ -->\n");
      out.write("<!-- ################################################################################################ -->\n");
      out.write("<!-- Top Background Image Wrapper -->\n");
      out.write("<div class=\"bgded overlay\" style=\"background-image:url('images/demo/backgrounds/lok.jpg' );\"> \n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  <div class=\"wrapper row0\">\n");
      out.write("    <div id=\"topbar\" class=\"hoc clear\"> \n");
      out.write("      <!-- ################################################################################################ -->\n");
      out.write("      <p class=\"fl_left nospace\"><i class=\"fas fa-phone\"></i> +91 9439331662</p>\n");
      out.write("    <!--  <p class=\"fl_right nospace\"><a class=\"btn\" href=\"#\">Get A Quote</a></p>-->\n");
      out.write("      <!-- ################################################################################################ -->\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  <div class=\"wrapper row1\">\n");
      out.write("    <header id=\"header\" class=\"hoc clear\">\n");
      out.write("      <div id=\"logo\" class=\"fl_left\"> \n");
      out.write("        <!-- ################################################################################################ -->\n");
      out.write("        <h1>FACILITY CENTER</h1>\n");
      out.write("        <!-- ################################################################################################ -->\n");
      out.write("      </div>\n");
      out.write("      <nav id=\"mainav\" class=\"fl_right\"> \n");
      out.write("        <!-- ################################################################################################ -->\n");
      out.write("        <ul class=\"clear\">\n");
      out.write("         <li class=\"active\"><a href=\"index.html\">HOME</a></li>\n");
      out.write("          <li><a href=\"student_publish_document.jsp\">Publish Document</a></li>\n");
      out.write("          <li><a href=\"student_search_document.jsp\">Search Document</a></li>\n");
      out.write("          <li><a href=\"index.html\">Logout</a></li>\n");
      out.write("         \n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("  </div>\n");
      out.write("  <div > \n");
      out.write("    <!-- ################################################################################################ -->\n");
      out.write("    <article>\n");
      out.write("      <p style=\"padding-bottom:40px;\"></p>\n");
      out.write("      <h3 class=\"heading\"></h3>\n");
      out.write("      <h4 class=\"heading\"></h4>\n");
      out.write("      <p> </p>\n");
      out.write("      <!--<footer>\n");
      out.write("        <ul class=\"nospace inline pushright\">\n");
      out.write("          <li><a class=\"btn\" href=\"#\">LOGIN</a></li>-->\n");
      out.write("         <!-- <li><a class=\"btn inverse\" href=\"#\">Tristique</a></li>-->\n");
      out.write("        <!--</ul>\n");
      out.write("      </footer> -->\n");
      out.write("    </article>\n");
      out.write("    <!-- ################################################################################################ -->\n");
      out.write("  </div>\n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("  \n");
      out.write("  <!-- ################################################################################################ -->\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"bgded overlay\" style=\"background-image:url('images/demo/gallery/oiu.jpg;')\">\n");
      out.write("  <section class=\"hoc container clear\">\n");
      out.write("    <div class=\"points group\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("        <script type=\"text/javascript\" src=\"./jsFileUpload/jquery.js\"></script>\n");
      out.write("<script  type=\"text/javascript\" src=\"./jsFileUpload/vendor/jquery.ui.widget.js\"></script>\n");
      out.write("<script  type=\"text/javascript\" src=\"./jsFileUpload/jquery.iframe-transport.js\"></script>\n");
      out.write("<script  type=\"text/javascript\" src=\"./jsFileUpload/jquery.fileupload.js\"></script>\n");
      out.write("  <script>\n");
      out.write("$(function () {    \n");
      out.write("    $('#fileField').fileupload({\n");
      out.write("        dataType: 'json',\n");
      out.write("        url: 'FileUploadServlet',\n");
      out.write("        //url: 'ImageUploadServlet',\n");
      out.write("        progress:function(e, data) {\n");
      out.write("            var pec=parseInt(data.loaded / data.total * 100, 10);\n");
      out.write("            if(pec==99)   /*  for Firefox: as Progress stops at 99% */\n");
      out.write("                pec=pec+1;\n");
      out.write("         \t$('#myfileL').html('Upload Status :  '+ pec +' %');\n");
      out.write("        },\n");
      out.write("        done: function (e, data) {\n");
      out.write("           $.each(data.result, function (key, value) {\n");
      out.write("\t\t\t\tif(key==\"name\")\n");
      out.write("\t\t\t\t{   \n");
      out.write("\t\t\t\t\t$(\"#myfile\").val(value); // set the file name as hidden field value\n");
      out.write("\t\t\t\t\t$(\"#myfileL\").html(value);\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t//$(\"#myfileL\").html(\"<img src='uploadedfiles/\"+value+\"' width='100' height='100' />\");\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t} \n");
      out.write("\t\t\t\tif(key==\"size\")\n");
      out.write("                                {  \n");
      out.write("                                    $(\"#myfileL\").append(\" (\"+ value+ \")\");\n");
      out.write("                                }  \n");
      out.write("\t\t\t\tif(key==\"type\")\n");
      out.write("                                {   \n");
      out.write("                                    $(\"#contentType\").val(value); \n");
      out.write("                                }  \n");
      out.write("                                if(key==\"error\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\t$(\"#myfileL\").html(value);\n");
      out.write("\t\t\t\t}\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("    <center>\n");
      out.write("<form action=\"student_publish_document\" method=\"post\">\n");
      out.write("    <table>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("        <tr>\n");
      out.write("            <td>Document Category:</td>\n");
      out.write("            <td><select name=\"cat\">\n");
      out.write("               <option>Choose Category</option>\n");
      out.write("            ");

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
        String sql="select * from Category_tbl";
        String cat;
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
       
      out.write("\n");
      out.write("       ");

        while(rs.next()) {
             cat=rs.getString("category");
         
      out.write("\n");
      out.write("         <option value=\"");
      out.print(cat);
      out.write('"');
      out.write('>');
      out.print(cat);
      out.write("</option>\n");
      out.write("               \n");
      out.write("            ");

   }
  
      out.write("\n");
      out.write("        </select></td>\n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("            <td>Share With:</td>\n");
      out.write("            <td><select name=\"share_with\">\n");
      out.write("                    <option value=\"select\">Select</option>\n");
      out.write("                    <option value=\"student\">Student</option>\n");
      out.write("                    <option value=\"faculty\">Faculty</option>\n");
      out.write("                    <option value=\"research scholar\">Research Scholar</option>\n");
      out.write("                </select>\n");
      out.write("            </td>\n");
      out.write("         </tr>\n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("            <td>Choose Document:</td>\n");
      out.write("            <td><input id=\"fileField\" type=\"file\" name=\"files[]\"  />\n");
      out.write(" <input type=\"hidden\" name=\"myfile\" id=\"myfile\" />\n");
      out.write(" \n");
      out.write("<label id=\"myfileL\"></label></td>\n");
      out.write("        </tr>\n");
      out.write("         <tr>\n");
      out.write("            <td>privileges:</td>\n");
      out.write("            <td><input type=\"checkbox\" name=\"br\" value=\"readonly\" />Read Only\n");
      out.write("                <br>\n");
      out.write("                <input type=\"checkbox\" name=\"br\" value=\"download\" />Download\n");
      out.write("                <br>\n");
      out.write("                <input type=\"checkbox\" name=\"br\" value=\"edit\" />Edit and use with due credit\n");
      out.write("                <br>\n");
      out.write("                <input type=\"checkbox\" name=\"br\" value=\"edit without reference\" />Edit and use without reference\n");
      out.write("                <br>\n");
      out.write("                <input type=\"checkbox\" name=\"br\" value=\"share\" />Re-share with others</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>Publisher Id:</td>\n");
      out.write("            <td><input type=\"text\" name=\"publisherid\" value=\"\"></td>\n");
      out.write("        \n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>Name:</td>\n");
      out.write("            <td><input type=\"text\" name=\"name\" value=\"\"></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>Phone No:</td>\n");
      out.write("            <td><input type=\"text\" name=\"phoneno\" value=\"\"></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("         <tr>\n");
      out.write("         \n");
      out.write("             <td colspan=\"2\"><center><input type=\"submit\" value=\"Upload Document\" style=\"width:150px; height:32px; background-color:#039518;border:0px; font:16px Arial, Helvetica, sans-serif; color:#FFFFFF; cursor: pointer\" ></center></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("    </table>\n");
      out.write("</form>\n");
      out.write("    </center>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

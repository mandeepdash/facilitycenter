package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class student_005fsearch_005fdocument_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"\">\n");
      out.write("<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->\n");
      out.write("<head>\n");
      out.write("<title>FACILITY CENTER</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n");
      out.write("<link href=\"layout/styles/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
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
      out.write("  <div class=\"wrapper row1\">\n");
      out.write("    <header id=\"header\" class=\"hoc clear\">\n");
      out.write("      <div id=\"logo\" class=\"fl_left\"> \n");
      out.write("        <!-- ################################################################################################ -->\n");
      out.write("        <h1>FACILITY CENTER</h1>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("      <nav id=\"mainav\" class=\"fl_right\"> \n");
      out.write("        <!-- ################################################################################################ -->\n");
      out.write("        <ul class=\"clear\">\n");
      out.write("          <li class=\"active\"><a href=\"index.html\">HOME</a></li>\n");
      out.write("          <li><a href=\"publish_document.jsp\">Publish Document</a></li>\n");
      out.write("        <li><a href=\"student_search_document.jsp\">Search Document</a></li>\n");
      out.write("        <li><a href=\"index.html\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("      \n");
      out.write("        <!-- ############################################################################################### -->\n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("  </div>\n");
      out.write("  <br><br><br>                                                                                                                                                                                                  \n");
      out.write("  <div > \n");
      out.write("    <!-- ################################################################################################ -->\n");
      out.write("    <article>\n");
      out.write("      <p style=\"padding-bottom:40px;\"></p>\n");
      out.write("      <h3 class=\"heading\"></h3>\n");
      out.write("      <h4 class=\"heading\"></h4>\n");
      out.write("      <p> </p>\n");
      out.write("      \n");
      out.write("    </article>\n");
      out.write("    <!-- ################################################################################################ -->\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"bgded overlay\" style=\"background-image:url('images/demo/gallery/oiu.jpg;')\">\n");
      out.write("  <section class=\"hoc container clear\">\n");
      out.write("    <div class=\"points group\"> \n");
      out.write("      \n");
      out.write("        <table>\n");
      out.write("           <center>\n");
      out.write("          <div class=\"row\">\n");
      out.write("    \t<div class=\"col-md-3\"></div>\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("           \n");
      out.write("               <form class=\"form-horizontal\" role=\"form\" method=\"get\" action=\"search_details1.jsp\">\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   <div class=\"form-group\">\n");
      out.write("                       <label class=\"control-label col-sm-4\" for=\"category\"><b><font size=\"4\">DOCUMENT ID:</font></b></label>\n");
      out.write("                  <div class=\"col-sm-5\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"document_id\" id=\"email\" placeholder=\" \" required=\"required\">\n");
      out.write("                  </div>\n");
      out.write("                    \n");
      out.write("                  <div class=\"col-sm-3\"><input type=\"submit\" class=\"btn btn-success\" name=\"SEARCH\" value=\"SEARCH\" style=\"cursor:pointer;\" />\n");
      out.write("           </div>\n");
      out.write("                </div>\n");
      out.write("  \n");
      out.write("    </body>");
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

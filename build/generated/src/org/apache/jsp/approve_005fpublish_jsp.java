package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class approve_005fpublish_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script src=\"datetimepicker_css.js\"></script>   \n");
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
      out.write("          <li class=\"active\"><a href=\"index.html\">HOME</a></li>\n");
      out.write("          <li><a href=\"approve_membership.jsp\">Manage Membership</a></li>\n");
      out.write("          <li><a href=\"approve_publish.jsp\">Manage Publication</a></li>\n");
      out.write("          <li><a href=\"view_category.jsp\">Manage Category</a></li>\n");
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
      out.write("<div class=\"bgded overlay\" style=\"background-image:url('images/demo/gallery/oiu.jpg;')\">\n");
      out.write("  <section class=\"hoc container clear\">\n");
      out.write("    <div class=\"points group\"> \n");
      out.write("      <!-- ################################################################################################ -->\n");
      out.write("      <div class=\"sectiontitle\">\n");
      out.write("        <!--<p class=\"nospace font-xs\">An investment in knowledge pays the best intrest.</p>-->\n");
      out.write("        <h1 class =\"heading font-x3\">Approve Publication</h1>\n");
      out.write("      </div>\n");
      out.write("          <center>\n");
      out.write("              \n");
      out.write("\t<div class=\"row\">\n");
      out.write("    \t<div class=\"col-md-3\"></div>\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("        \t<form class=\"form-horizontal\" role=\"form\" method=\"get\" action=\"approve_publishdetail.jsp\" >\n");
      out.write("              \n");
      out.write("        <div class=\"form-group\">\n");
      out.write("                  <label class=\"control-label col-sm-4\" for=\"email\">Choose User Type:</label>\n");
      out.write("                  <div class=\"col-sm-4\">\n");
      out.write("                    <select name=\"share_with\">\n");
      out.write("                    <option value=\"select\">Select</option>\n");
      out.write("                    <option value=\"student\">Student</option>\n");
      out.write("                    <option value=\"faculty\">Faculty</option>\n");
      out.write("                    <option value=\"researchscholar\">Research Scholar</option>\n");
      out.write("                </select>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-sm-3\"></div>\n");
      out.write("                </div>\n");
      out.write("                   \n");
      out.write("        </<div class=\"form-group\">        \n");
      out.write("                  <div class=\"col-sm-offset-4 col-sm-2\">\n");
      out.write("                     <input type=\"submit\" class=\"btn btn-success\" name=\"Register\" value=\"View Publication Requests\" style=\"cursor:pointer;\" />\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-3\"></div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      \n");
      out.write("  </section>\n");
      out.write("</div>\n");
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

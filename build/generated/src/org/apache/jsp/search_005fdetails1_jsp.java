package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class search_005fdetails1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {



String doc_id;
String pubname;

String phno;
String fileName;

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
      out.write("<head>\n");
      out.write("<title>FACILITY CENTER</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("<h1>SHOW DOCUMENT DETAILS</h1>\n");
      out.write("\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th> DOCUMENTID </th> \n");
      out.write("                    <th>PUBLISHER NAME </th>\n");
      out.write("                     <th>PHONE </th>\n");
      out.write("                      <th>FILE </th>\n");
      out.write("                      \n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");

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
                          int fileId=rs.getInt("FILE_ID");
                        String contentType=rs.getString("CHOOSE_DOCUMENT");
                        
                        
           
      
      out.write("     \n");
      out.write("           \n");
      out.write("        \n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("   \n");
      out.write("        <tr>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("    <td> ");
      out.print(doc_id);
      out.write("</td>\n");
      out.write("    \n");
      out.write("             <td> ");
      out.print(pubname);
      out.write("</td>\n");
      out.write("             \n");
      out.write("     \n");
      out.write("             <td>");
      out.print(phno);
      out.write("</td>\n");
      out.write("<td>    \n");
      out.write("    <a href=\"GetUploadedFile?id=");
      out.print(fileId );
      out.write("\" >Download</a> \n");
      out.write("</td>\n");
      out.write("    \n");
      out.write("        </tr>\n");
      out.write("         ");
 }
                    
      out.write("\n");
      out.write("              \n");
      out.write("              \n");
      out.write("        </table></center>\n");
      out.write("        \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
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

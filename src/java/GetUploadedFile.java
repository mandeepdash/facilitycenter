/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SUBRAT
 */
public class GetUploadedFile extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
                String id=request.getParameter("id");
                
                Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); //add type 4 driver jar file in library
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "project", "facilitycenter");
                String qry="Select file_data,CHOOSE_DOCUMENT as content_type from PUBLISH_DOCUMENT1 where file_id=? ";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setString(1, id);
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                        byte[] bytearray = new byte[1048576];
                        int size=0;
                        InputStream is = rs.getBinaryStream("file_data");
                        String contentType=rs.getString("content_type");
                        response.reset();
                        response.setContentType(contentType);
                        while((size=is.read(bytearray))!= -1 )
                        {
                                response.getOutputStream().write(bytearray,0,size);
                        }
                }

           } 
           catch(Exception e){
               e.printStackTrace();
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

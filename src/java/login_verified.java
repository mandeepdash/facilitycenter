/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author HP
 */
public class login_verified extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            Statement st=con.createStatement();
            String uid=req.getParameter("username");
            String upass=req.getParameter("password");
            HttpSession session=req.getSession();
            String uid_db;
            String upass_db;
            String utype_db;
            ResultSet rs=st.executeQuery("select * from userdb");
            
            while(rs.next())
            {
                utype_db=rs.getString("type");
                uid_db=rs.getString("regno");
                upass_db=rs.getString("password");
                if(uid.equals(uid_db)&& upass.equals(upass_db))
                {
                 session.setAttribute("userid",uid);
                    session.setAttribute("password",upass);
                    session.setAttribute("usertype",utype_db);
                    if(utype_db.equals("Faculty"))
                      {
                                res.sendRedirect("faculty_home.jsp");
                    
                       }
                if(utype_db.equals("Student"))
                  {
                                res.sendRedirect("student_home.jsp");
                    
                  }
                if(utype_db.equals("ResearchScholar"))
                  {
                                res.sendRedirect("researchscholar_home.jsp");
                  }
                if(utype_db.equals("admin"))
                  {
                                res.sendRedirect("admin_home.jsp");
                  }
            }
            else
            {
                out.println("<script>");
                out.println("alert('Invalid Username Or Password');document.location.href='login.jsp'");
                out.println("</script>");
             }
        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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

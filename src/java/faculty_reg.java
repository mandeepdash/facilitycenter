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
/**
 *
 * @author HP
 */
public class faculty_reg extends HttpServlet {

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
            String regno=req.getParameter("employeeid");
            String name=req.getParameter("name");
            String address=req.getParameter("address");
            String experience=req.getParameter("experience");
            String qualification=req.getParameter("qualification");
            String branch=req.getParameter("branch");
            String email=req.getParameter("email");
            String contactno=req.getParameter("contactno");
            String pwd=req.getParameter("pwd");
            
         
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="insert into userdb(regno,Password,Type)values("+regno+",'"+pwd+"','Faculty')";
            Statement st=con.createStatement();
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                 String sql1="insert into facultydb(employeeid,name,address,experience,qualification,branch,email,contactno,status) values("+regno+",'"+name+"','"+address+"',"+experience+",'"+qualification+"','"+branch+"','"+email+"','"+contactno+"','0')";
                 int j= st.executeUpdate(sql1);
            
            if(j>0)
            {
                out.println("<script>");
                out.println("alert('Registered Successfully');document.location.href='index.html'");
                out.println("</script>");
                
            }
            else
            {
                out.println("record not inserted");
            }
            }
            
        } 
        catch(Exception e)
        {
            e.printStackTrace();
        } finally {
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

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
public class student_regi extends HttpServlet {

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
          String reg_no=req.getParameter("reg_no");
            String name=req.getParameter("name");
            String address=req.getParameter("address");
            String acad_year=req.getParameter("acad_year");
            String branch=req.getParameter("branch");
            String semester=req.getParameter("semester");
            String email=req.getParameter("email");
            String contactno=req.getParameter("contactno");
            String pwd=req.getParameter("pwd");
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
            String sql="insert into userdb(regno,Password,Type)values("+reg_no+",'"+pwd+"','Student')";
            Statement st=con.createStatement();
            int i=st.executeUpdate(sql);
            if(i>0)
            {
                 String sql1="insert into studentdb1s(regno,name,address,academicyear,branch,semester,email,contactno,status) values("+reg_no+",'"+name+"','"+address+"','"+acad_year+"','"+branch+"','"+semester+"','"+email+"','"+contactno+"','0')";
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
        }finally {
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
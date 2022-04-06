/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abs
 */
public class publish_document extends HttpServlet {

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
             String cate_var=request.getParameter("cat");
             String share_with_var=request.getParameter("share_with");
             
             String fileName=request.getParameter("myfile");
             String []chks=request.getParameterValues("br");
             String pid=request.getParameter("publisherid");
             String nm=request.getParameter("name");
             String phno=request.getParameter("phoneno");
             

String chk="";
if(chks!=null)
       {
            for(int i=0;i<chks.length;i++)
                               {
                               if(i==0)
                                   chk=chks[i];
                               else
                                   chk+=","+chks[i];
            }
}

            Random n=new Random();
            int code=n.nextInt();
            String docid=Integer.toHexString(code);
           docid=docid.substring(0,6);
     
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","facilitycenter");
                
            String sql="insert into PUBLISH_DOCUMENT(DOCUMENT_ID,CHOOSE_DOCUMENT,DOC_CATEGORY,SHARE_WITH,PRIVILEGE,PUBLISHER_ID,NAME,PHONE_NO,STATUS)values(?,?,?,?,?,?,?,?,'0')";
                    PreparedStatement ps=con.prepareStatement(sql);
            
                    
                    
                                ps.setString(1,docid);        
                               // ps.setString(2,ptype1);
                                ps.setString(2,fileName);  
                                ps.setString(3,cate_var);
                                                                
                              
                                ps.setString(4,share_with_var);
                                ps.setString(5,chk);
                                ps.setString(6,pid);
                                ps.setString(7, nm);
                                ps.setString(8,phno);
                                      
                                
                                int s=ps.executeUpdate();
                               
                                  if(s>0)
            {
               
               
                 response.sendRedirect("publish_doc_succ.jsp?id="+docid);
            }
            else
            {
               out.println("fail"); 
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
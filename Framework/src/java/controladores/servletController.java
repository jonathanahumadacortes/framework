/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static jdk.nashorn.internal.objects.NativeString.toUpperCase;

/**
 *
 * @author Jonathan
 */
public class servletController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String name = request.getParameter("name");
        request.setAttribute("name",toUpperCase(name));
        
        String last_name =  request.getParameter("last_name");
        request.setAttribute("last_name",toUpperCase(last_name));
        
        String adresse =  request.getParameter("adresse");
        request.setAttribute("adresse",toUpperCase(adresse));
        
        String gender =  request.getParameter("gender");
        request.setAttribute("gender",toUpperCase(gender));
        
        String run =  request.getParameter("run");
        request.setAttribute("run",toUpperCase(run));
        
        String date_of_birth =  request.getParameter("date_of_birth");
        request.setAttribute("date_of_birth",date_of_birth);
        
        
        String facebook =  request.getParameter("facebook");
        String instagram =  request.getParameter("instagram");
        String twitter =  request.getParameter("twitter");
        String otras =  request.getParameter("otras");
        
        
        if (facebook == null){
            facebook = ("");
            request.setAttribute("facebook",toUpperCase(facebook));
        }else{
            request.setAttribute("facebook",toUpperCase(facebook));
        }
                if (instagram == null){
                instagram = ("");
                request.setAttribute("instagram",toUpperCase(instagram));
        }else{
             request.setAttribute("instagram",toUpperCase(instagram));       
        }
                if (twitter == null){
                twitter = ("");
                request.setAttribute("twitter",toUpperCase(twitter));
        }else{
             request.setAttribute("twitter",toUpperCase(twitter));        
        }
                if (otras == null){
                otras = ("");
                request.setAttribute("otras",toUpperCase(otras));
        }else{
             request.setAttribute("otras",toUpperCase(otras));        
        }
                
        request.getRequestDispatcher("muestradatos.jsp").forward(request, response);        
        
        
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MiPrimerServlets</title>");            
            out.println("</head>");
            out.println("<body>");
            
            out.println("</body>");
            out.println("</html>");
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

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
public class MiPrimerServlets extends HttpServlet {

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
                
        String user =  request.getParameter("user");
        String last_name =  request.getParameter("last_name");
        String telephone =  request.getParameter("telephone");
        String run =  request.getParameter("run");
        String date_of_birth =  request.getParameter("date_of_birth");
        
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MiPrimerServlets</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet MiPrimerServlets at " + re/**/quest.getContextPath() + "</h1>");
            out.println("<table>");
            out.println("<tr>");
            out.println(" <td><strong> El NOMBRE INGRESADO ES: </strong></td>" + "<td>" + toUpperCase(user)+ "</td>");
             out.println("</tr>");
            out.println("<strong> LOS APELLIDOS INGRESADOS SON: </strong>" + toUpperCase(last_name));
            out.println("<br>");
            out.println("<strong> El NUMERO TELEFONICO ES: </strong>" + telephone);
            out.println("<br>");
            out.println("<strong> El RUT ES: </strong>" + run);
            out.println("<br>");
            out.println("<strong> LA FEHCA DE NACIMIENTO ES: </strong>" + date_of_birth);
            // response.sendRedirect(""); redirigir
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

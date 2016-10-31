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
import javax.servlet.http.HttpSession;
/**
 *
 * @author Microsoft Windows
 */
public class SesionesServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

         String usuarioNombre;
         String password;
        
      //recuperamos los datos del formulario
          usuarioNombre = request.getParameter("usuarioNombre");
          password = request.getParameter("password");
         
      HttpSession sesion = request.getSession();
      sesion.setAttribute("claveSesion", usuarioNombre + password);
      sesion.setAttribute("nombre", usuarioNombre);
      sesion.setAttribute("contrasena", password);
      
       response.setContentType("text/html");
      //Mostramos los  valores en el cliente
      PrintWriter out = response.getWriter();
       
      out.println("<a href=\"Sesion.html\"> Entrar a mi sesion </a>");
      out.println("<br>");
      out.println("ID de la sesi&oacute;n: " + sesion.getId());
        }
    }

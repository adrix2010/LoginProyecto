/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Microsoft Windows
 */
@WebServlet(urlPatterns = {"/ServletValidos"})
public class ServletValidos extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

      response.setContentType("text/html");
      HttpSession sesion = request.getSession();
      String titulo = null;
      
         String usuarioNombre;
         String password;
        
      //recuperamos los datos del formulario
          usuarioNombre = request.getParameter("usuarioNombre");
          password = request.getParameter("password");
         
 
      sesion.setAttribute("claveSesion", usuarioNombre + password);
      sesion.setAttribute("nombre", usuarioNombre);
      sesion.setAttribute("contrasena", password);
      //Pedimos el atributo, y verificamos si existe
      String claveSesion = (String) sesion.getAttribute("claveSesion");
          if(claveSesion != ""){
        titulo = "llave correcta continua la sesion";
      }else {
              titulo = "Sesion invalida";
          }
       
  

      //Mostramos los  valores en el cliente
      PrintWriter out = response.getWriter();
      out.println(titulo);
      out.println("Hola" + sesion.getAttribute("nombre"));
      out.println("<br>");
      out.println("ID de la sesi&oacute;n JSESSIONID: " + sesion.getId());
  
    }
   }



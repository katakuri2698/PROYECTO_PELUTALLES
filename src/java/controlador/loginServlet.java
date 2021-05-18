/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import daos.UsuarioDAO;
import dtos.UsuarioDTO;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LAB-USR-PT116-C509
 */
public class loginServlet extends HttpServlet {

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

        String usuario = request.getParameter("txtUsuario");
        String clave = request.getParameter("txtClave");
          
        if (usuario.trim().isEmpty() || clave.trim().isEmpty()) {
            
            String error = "Debera de completar todos los campos";
            request.getSession().setAttribute("error", error);
            request.getRequestDispatcher("newlogin.jsp").forward(request, response);
        } 
        else {

          /*  String patron = "\\w+@+\\w+\\.+[a-zA-Z]{3}";
            Pattern cadena = Pattern.compile(patron);
            Matcher matcher = cadena.matcher("");
*/
            //if (matcher.matches()) {
             
                UsuarioDTO usuarios = new UsuarioDTO(usuario, clave);
              UsuarioDAO login = new UsuarioDAO();
              
                    
                if (login.login(usuarios)) {
                    if(usuario.equalsIgnoreCase("pedro") && clave.equalsIgnoreCase("1234") ){
                    request.getSession().setAttribute("usuario", usuarios.getUsuario());
                    request.getRequestDispatcher("pages/sistema.jsp").forward(request, response);
                        }
                    else {
                    request.getSession().setAttribute("usuario", usuarios.getUsuario());
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                    
                    }
                
                    
                    

                

           // } else {

              //  String error = "Debera de ingresar una cuenta de correo valida";
              //  request.getSession().setAttribute("error", error);
               // request.getRequestDispatcher("pages/error.jsp").forward(request, response);

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
            protected void doGet
            (HttpServletRequest request, HttpServletResponse response)
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
            protected void doPost
            (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                processRequest(request, response);
            }

            /**
             * Returns a short description of the servlet.
             *
             * @return a String containing servlet description
             */
            @Override
            public String getServletInfo
            
            
                () {
        return "Short description";
            }// </editor-fold>

   
}

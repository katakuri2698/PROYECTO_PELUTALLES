/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import daos.UsuarioDAO;
import dtos.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LAB-USR-PT116-C509
 */
public class registroservlet extends HttpServlet {
    
  String sistema = "pages/sistema.jsp";     
  String index = "index.jsp";
  String  login = "newlogin.jsp";
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
           
        
            String acceso = "";
            
            String usuario = request.getParameter("txtUsuario");
            String clave = request.getParameter("txtContrasena");
            String nombres= request.getParameter("txtNombre");
            String apellidos = request.getParameter("txtApellidos");
            int telefono = Integer.parseInt(request.getParameter("txtTelefono"));
            String correo = request.getParameter("txtCorreo");
            String tipousuario ="Normal";
            int estado = 1;
            
          
             UsuarioDTO usu = new UsuarioDTO( usuario,clave,correo,nombres,apellidos,telefono,tipousuario,estado);
           UsuarioDAO agregarusu =new UsuarioDAO();
             /*
              if (usuario.trim().isEmpty() || clave.trim().isEmpty()) {
            String error = "Debera de completar todos los campos";
            request.getSession().setAttribute("error", error);
            request.getRequestDispatcher("pages/error.jsp").forward(request, response);
              }
            */
             if(agregarusu.register(usu)!= true){
             
             acceso = index;
             request.getRequestDispatcher(acceso).forward(request, response);
             
             
             }else {
                     acceso = login;
                     request.getRequestDispatcher(acceso).forward(request, response);
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

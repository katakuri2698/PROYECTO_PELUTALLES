/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import dtos.UsuarioDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import miempresa.conexion.ConexionBD;

public class UsuarioDAO {

    private static final String sql_login = "select * from USUARIOS where usuario=? and clave=?";
    private static final String sql_insert = "insert into  USUARIOS (usuario,clave,correo,nombres,apellidos,telefono) values (?,?,?,?,?,?)";
    private static final String sql_update = "update USUARIOS set usuario= ?,clave= ?,correo= ?,nombres= ?,apellidos= ?,telefono= ?,tipo_usuario= ?,estado= ?"
            + "where id_usuario=?";
    private static final String sql_eliminar ="delete from USUARIOS where id_usuario = ? ";
    
    private static PreparedStatement pstm = null; // Colocar y ejecutar consulta en el servidor de base de datos
    private static ResultSet res = null;
    private static ConexionBD con = null;

    public UsuarioDAO() {
        con = ConexionBD.generarInstancia();
    }

    public boolean login(UsuarioDTO usuario) {

        boolean result = false;
      
        try {
            pstm = con.getCon().prepareStatement(sql_login);
           
            pstm.setString(1, usuario.getUsuario());
            pstm.setString(2, usuario.getClave());
            res = pstm.executeQuery();
            if (res.next()) {
                 result = true;
            }
        } catch (Exception e) {
            System.out.println("Error login :" + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (res != null) {
                    res.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
                if (con != null) {
                    con.cerrarConexion();
                }

            } catch (Exception e) {
                System.out.println("Error cerrar conexion" + e.getMessage());
                e.printStackTrace();
            }
        }
        return result;
    }

    public boolean register(UsuarioDTO usuario) {
        boolean result = false;
        try {
            
            pstm = con.getCon().prepareStatement(sql_insert);
            pstm.setString(1, usuario.getUsuario());
            pstm.setString(2, usuario.getClave());
            pstm.setString(3, usuario.getCorreo());
            pstm.setString(4, usuario.getNombres());
            pstm.setString(5, usuario.getApellidos());
            pstm.setInt(6, usuario.getTelefono());
            //pstm.setString(6, usuario.getTipo_usuario());
            //pstm.setInt(8, usuario.getEstado());
            if (pstm.executeUpdate() > 0) {
                result = true;
            }

        } catch (Exception e) {
            System.out.println("Error al insertar :" + e.getMessage());
            e.printStackTrace();
        } finally {

            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (con != null) {
                    con.cerrarConexion();
                }
            } catch (Exception e) {
            }

        }
        return result;
    }
    
    public boolean modificar(UsuarioDTO usuario){
        boolean result = false;
        try {
            pstm = con.getCon().prepareStatement(sql_update);
            pstm.setString(1, usuario.getUsuario());
            pstm.setString(2, usuario.getClave());
            pstm.setString(3, usuario.getCorreo());
            pstm.setString(4, usuario.getNombres());
            pstm.setString(5, usuario.getApellidos());
            pstm.setInt(6, usuario.getTelefono());
            pstm.setString(7, usuario.getTipo_usuario());
            pstm.setInt(8, usuario.getEstado());
           
       
            if (pstm.executeUpdate() > 0) {
                result = true;
            }

        } catch (Exception e) {
            System.out.println("Error al modificar :" + e.getMessage());
            e.printStackTrace();
        } finally {

            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (con != null) {
                    con.cerrarConexion();
                }
            } catch (Exception e) {
            }

        }
        return result;
    }
   
   public boolean eliminar(UsuarioDTO usuario, int id){
         boolean result = false;
        try {
            pstm = con.getCon().prepareStatement(sql_update);
            pstm.setInt(1, id);
              
       
            if (pstm.executeUpdate() > 0) {
                result = true;
            }

        } catch (Exception e) {
            System.out.println("Error al modificar :" + e.getMessage());
            e.printStackTrace();
        } finally {

            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (con != null) {
                    con.cerrarConexion();
                }
            } catch (Exception e) {
            }

        }
        return result;
    }
   
   public void listarUsuarios(){
   }
   
   
   }


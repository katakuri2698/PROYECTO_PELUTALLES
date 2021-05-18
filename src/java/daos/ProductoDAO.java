/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import interfaces.OperacionesBD;
import java.util.*;
import dtos.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import conexion.Database;

/**
 *
 * @author PedroCF
 */
public class ProductoDAO implements OperacionesBD {
        
    Database db = new Database();
    @Override
    public String insertar(Object obj) {
        
        productoDTO prod = (productoDTO) obj;
        Connection conn;
        PreparedStatement pst;
        String sql ="INSERT INTO PRODUCTO values (?,?,?,?,?,?,?);";
        String respuesta ="";
        
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPass()
            );
            //Conectarme al SQL
            pst=conn.prepareStatement(sql);
            pst.setString(1,prod.getNombre());
            pst.setString(2, prod.getImg_producto());
            pst.setString(3, prod.getDescripcion());
            pst.setFloat(4, prod.getPrecio_venta());
            pst.setInt(5,prod.getStock());
            pst.setInt(6,1);
            pst.setInt(7,1);
            pst.executeUpdate();
            respuesta = "Se registro el elemento";
            conn.close();
            } catch (ClassNotFoundException | SQLException e) {
        }
        return respuesta;
    }

    @Override
    public String modificar(Object obj) {
         productoDTO prod = (productoDTO) obj;
        Connection conn;
        PreparedStatement pst;
        String sql ="UPDATE PRODUCTO SET nombre=?,img_producto=?,descripcion=?,precio_venta=?,stock=?,id_categoria=?,id_estado=?"
                + "WHERE id_producto=?;";
        String respuesta ="";
        
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPass()
            );
            //Conectarme al SQL
            pst=conn.prepareStatement(sql);
            pst.setString(1,prod.getNombre());
            pst.setString(2, prod.getImg_producto());
            pst.setString(3, prod.getDescripcion());
            pst.setFloat(4, prod.getPrecio_venta());
            pst.setInt(5,prod.getStock());
            pst.setInt(6,prod.getId_producto());
            pst.setInt(7,prod.getId_categoria());
            pst.setInt(8,prod.getId_estado());
            pst.executeUpdate();
            respuesta = "Se modifico el elemento";
            conn.close();
            } catch (ClassNotFoundException | SQLException e) {
        }
        return respuesta;
    }

    @Override
    public String eliminar(Object obj) {
          productoDTO prod = (productoDTO) obj;
        Connection conn;
        PreparedStatement pst;
        String sql ="UPDATE PRODUCTO SET id_estado=? WHERE id_producto=?;";
        String respuesta ="";
        
        try {
            Class.forName(db.getDriver());
            conn = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPass()
            );
            //Conectarme al SQL
            pst=conn.prepareStatement(sql);
            pst.setInt(1,prod.getId_estado());
            pst.setInt(2,prod.getId_producto());
            pst.executeUpdate();
            respuesta = "Se desahabilito el elemento";
            conn.close();
            } catch (ClassNotFoundException | SQLException e) {
        }
        return respuesta;
    }

    @Override
    public List<productoDTO> consultar() {
       List<productoDTO> datos = new ArrayList<>();
       Connection conn;
       PreparedStatement pst;
        ResultSet rs;
        String sql = "Select * from producto";
        
        try {
            Class.forName(db.getDriver());
            conn=DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPass()
            );
            pst=conn.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while(rs.next()){
            datos.add(new productoDTO(
                    rs.getString("nombre"),
                    rs.getString("img_producto"),
                    rs.getString("descripcion"),
                    rs.getFloat("precio_venta"),
                    rs.getInt("stock"),
                    rs.getInt("id_categoria"),
                    rs.getInt("id_estado")
            ));
            }
            conn.close();
            
        } catch (ClassNotFoundException | SQLException e) {
            
        }
        return datos;
    }
    
}

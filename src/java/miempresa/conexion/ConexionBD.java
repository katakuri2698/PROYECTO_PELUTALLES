/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package miempresa.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionBD {

    public static ConexionBD instancia = null;
    public static final String url = "jdbc:sqlserver://localhost:1433;databaseName=bdpelutalles";
    public static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";    
    public static final String user = "sa";
    public static final String password = "alumno";
    public static Connection con = null; // API JDBC


     public ConexionBD(){
    
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, password);      
        } catch (Exception e) {
            System.out.println("Error de conexion"+e.getMessage());
            e.printStackTrace();  
        } 
    }
     
     public synchronized static ConexionBD generarInstancia(){  
    
         if(instancia==null){        
             instancia = new ConexionBD();            
         }
       return instancia; 
    }

    public Connection getCon() {
        return con;
    }
    
    public void cerrarConexion(){
    
        instancia=null;
    
    }
    
}

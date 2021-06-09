/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class CConexion {
    
    Connection con;
    public final String url = "jdbc:sqlserver://localhost:1433;databaseName=bdpelutalles";
    public final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public final String user = "sa";
    public final String pass = "alumno";

    public Connection Conexion() {
        try {
            Class.forName(driver);
                    con=DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        }
        return con;
    }
}
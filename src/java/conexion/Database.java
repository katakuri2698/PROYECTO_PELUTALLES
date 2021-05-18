/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;


public class Database {
    private String driver;
    private String url;
    private String user;
    private String pass;

    public Database() {
    }

    public Database(String driver, String url, String user, String pass) {
        this.driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        this.url = "jdbc:sqlserver://localhost:1433;databaseName=bdpelutalles";
        this.user = "sa";
        this.pass = "alumno";
    }

    public String getDriver() {
        return driver;
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }
    
    
}


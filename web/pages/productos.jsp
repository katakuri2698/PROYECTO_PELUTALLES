<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <link href="../estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %>  
        <link href="../estilosproductos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <%@include file="../WEB-INF/jspfs/navglobal.jspf"%>



        <%@include file="../WEB-INF/jspfs/js.jspf"%>

        
        <div class="container">
                <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

<%@page import="daos.ProductoDAO"%>
<%@page import="dtos.productoDTO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

        
          
        <%
            ArrayList<productoDTO>productos= new ArrayList<>();
 Connection con;
    String url="jdbc:sqlserver://localhost:1433;databaseName=bdpelutalles";
    String user="sa";
    String pass="alumno";
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    con=DriverManager.getConnection(url,user,pass);
    
    PreparedStatement ps;
     ResultSet rs;
     ps=con.prepareStatement("select * from producto");
     rs=ps.executeQuery();
     
     
         
%>
        
        <div class="container mt-4">
            <div class="row">
                 
                <%
                                    while(rs.next()){
                %>
                    <div class="col-sm-4 mb-lg-4">
                    <div class="card">
                        <div class="card-header">
                            <label><%= rs.getInt("id_producto")%></label>
                        </div>
                        <div class="card-body">
                           
                            <img src="<%= rs.getString("img_producto")%>" width="200" height="180">
                            <BR>
                             <i><%= rs.getFloat("precio_venta")%></i>
                        </div>
                        <div class="card-footer text-center">
                            <label><%= rs.getString("descripcion")%></label>
                            
                            <div>
                                <a href="controladorProducto?accion=AgregarCarrito&id=<%= rs.getInt("id_producto")%>" class="btn btn-outline-info">Agregar a carrito</a>
                                <a href="controladorProducto?accion=Comprar&id=<%= rs.getInt("id_producto")%>" class="btn btn-danger">Comprar</a>
                            </div>
                        </div>
                    </div>
                </div>   
                <%}%> 
                
                
                <br>
            </div>                     
        </div>


				
			</div>
	
            
        <script>
            new WOW().init();
        </script>
        
    </body>
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>
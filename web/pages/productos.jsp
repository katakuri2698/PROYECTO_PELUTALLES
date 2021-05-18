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

        
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">Pelutalles</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="controladorProducto?accion=home">Catalogo <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Mejores ofertas</a>
                  </li>
                  
                  <li class="nav-item">
                      <a class="nav-link" href="controladorProducto?accion=Carrito"><i class="fas fa-cart-plus">(<label style="color:darkorange">${contador}</label>)</i>Carrito</a>
                  </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
              
              </div>
            </nav>
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
                    <div class="col-sm-4">
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
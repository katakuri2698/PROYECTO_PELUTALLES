<%-- 
    Document   : catalogo
    Created on : 02/12/2019, 05:25:18 PM
    Author     : BIB-USR-AQP265
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resumen carrito</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
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
                      <a class="nav-link" href="controladorProducto?accion=home">Seguir comprando</a>
                  </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                  <ul class="navbar-nav">
                     <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Menu de acceso
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Iniciar sesion</a>
                      <a class="dropdown-item" href="#">Registrarse</a>
                      
                    </div>
                  </li>
                  </ul>
              </div>
            </nav>
        
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-8">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    
                                    <th>Producto</th>
                                    <th>Detalle</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Accion</th>
                                </tr>       
                            </thead>
                            <tbody>
                                <c:forEach var="car" items="${carrito}">
                                    <tr>
                                        <td><img src="${car.getImg_producto()}" width="100" height="100"></td>
                                        <td>${car.getDescripcion()}</td>
                                        <td>${car.getPrecio()}</td>
                                        <td>${car.getCantidad()}</td>
                                        <td>
                                            <input type="hidden" id="idp" value="${car.getId_producto()}">  
                                            <a href="#" id="btnDelete">Eliminar</a>
                                            <a href="#">Editar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div> 
                    <div class="col-sm-4">
                        <h3>Resumen de compra</h3>
                        <br>
                        <div class="card">
                            <div class="card-header">
                                <h3>Generar compra</h3>
                            </div>
                            <div class="card-body">
                                <label>Subtotal</label>
                                <input type="text" value="s/.${totalPagar}0" readonly="" class="form-control">
                                <label>Descuento</label>
                                <input type="text" value="s/0.00" readonly="" class="form-control"> 
                                <label>Total a pagar</label>
                                <input type="text" value="s/.${totalPagar}0" readonly="" class="form-control"> 
                            </div>
                            <div class="card-footer">
                                <a href="#" class="btn btn-info btn-block">Pagar</a>
                                <a href="#" class="btn btn-danger btn-block">Generar compra</a>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>

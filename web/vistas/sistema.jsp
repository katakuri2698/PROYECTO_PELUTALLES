<%-- 
    Document   : sistema
    Created on : 07/05/2019, 12:56:34 AM
    Author     : PedroCF
--%>
<%@page import="dtos.UsuarioDTO"%>
<% String usuario = (String) request.getSession().getAttribute("usuario");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <link href="estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %>  
    </head>
    <body>

        <nav>
            <ul>
                <a class="logo" href="<%=request.getContextPath()%>/index.jsp">Pelutalles </a>
                <center>
                    <li><a href="index.jsp"> Inicio </a> </li>
                    <li><a href="vistas/nosotros.jsp"> Nosotros </a> </li>
                    <li><a href="vistas/productos.jsp"> Productos </a> </li>
                    <li><a href="vistas/contacto.jsp"> Contactanos </a> </li>
                   
                   
                     
                     
                     
                    <li class="nav-item dropdown  ">
                        <a class="nav-link  md-pills" data-toggle="dropdown" href="CerrarSession" role="button" aria-haspopup="true"
                           aria-expanded="false"><%=usuario%></a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Configuración</a>
                            <a class="dropdown-item" href="CerrarSession">Cerrar Sesión</a>
                        </div>
                    </li>
                   
                </center>

            </ul>
        </nav> 

        <div class="container">
            <!-- Section: Features v.4 -->
            <div class="my-5">

                <!-- Section heading -->
                <h2 class="h1-responsive font-weight-bold text-center my-5"> Bienvenido <%=usuario%> </h2>
                <h2 class="h1-responsive font-weight-bold text-center my-5">¿Qué deseas hacer hoy?</h2>
                <!-- Section description -->
                <p class="lead grey-text text-center w-responsive mx-auto mb-5">Aquí podrás hacer todas las operaciones acerca del mantenimiento de los modulos de tu aplicación Web.</p>

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-md-4">

                        <!-- Grid row -->
                        <div class="row mb-3">

                            <!-- Grid column -->
                            <div class="col-2">
                                <i class="fas fa-2x fa-flag-checkered deep-purple-text"></i>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-10">
                                <h5 class="font-weight-bold mb-3">Operacionesd</h5>
                                <p class="grey-text">En este módulo podrás administrar las cuenta relacionadas al sistema</p>
                                <a href="vistas/VistaUsuario/usuListar.jsp">   <button type="button"  class="btn btn-secondary">Ir a</button></a>
                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->

                        <!-- Grid row -->
                        <div class="row mb-3">

                            <!-- Grid column -->
                            <div class="col-2">
                                <i class="fas fa-2x fa-flask deep-purple-text"></i>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-10">
                                <h5 class="font-weight-bold mb-3">Generación de Reportes</h5>
                                <p class="grey-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores
                                    nam, aperiam minima assumenda deleniti hic.</p>
                                <button type="button" class="btn btn-secondary">Ir a</button>
                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->

                        <!-- Grid row -->
                        <div class="row mb-md-0 mb-3">

                            <!-- Grid column -->
                            <div class="col-2">
                                <i class="fas fa-2x fa-glass-martini deep-purple-text"></i>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-10">
                                <h5 class="font-weight-bold mb-3">Modificar Productos</h5>
                                <p class="grey-text mb-md-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit
                                    maiores nam, aperiam minima assumenda deleniti hic.</p>
                                <button type="button" class="btn btn-secondary">Ir a</button>
                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 text-center">
                        <img class="img-fluid" src="https://image.flaticon.com/icons/png/512/1/1475.png"
                             alt="Sample image">
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4">

                        <!-- Grid row -->
                        <div class="row mb-3">

                            <!-- Grid column -->
                            <div class="col-2">
                                <i class="far fa-2x fa-heart deep-purple-text"></i>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-10">
                                <h5 class="font-weight-bold mb-3">OTRA COSA</h5>
                                <p class="grey-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores
                                    nam, aperiam minima assumenda deleniti hic.</p>
                                <button type="button" class="btn btn-secondary">Ir a</button>
                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->

                        <!-- Grid row -->
                        <div class="row mb-3">

                            <!-- Grid column -->
                            <div class="col-2">
                                <i class="fas fa-2x fa-bolt deep-purple-text"></i>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-10">
                                <h5 class="font-weight-bold mb-3">OTRA COSA</h5>
                                <p class="grey-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores
                                    nam, aperiam minima assumenda deleniti hic.</p>
                                <button type="button" class="btn btn-secondary">Ir a</button>
                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->

                        <!-- Grid row -->
                        <div class="row">

                            <!-- Grid column -->
                            <div class="col-2">
                                <i class="fas fa-2x fa-magic deep-purple-text"></i>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-10">
                                <h5 class="font-weight-bold mb-3">OTRA COSAl</h5>
                                <p class="grey-text mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit
                                    maiores nam, aperiam minima assumenda deleniti hic.</p>
                                <button type="button" class="btn btn-secondary">Ir a</button>
                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row -->

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Section: Features v.4 -->
        </div>

        <%@include file="../WEB-INF/jspfs/js.jspf"  %>


        <script>
            new WOW().init();
        </script>
    </body>
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>


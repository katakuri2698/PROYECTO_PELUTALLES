<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="WEB-INF/jspfs/css.jspf"  %>
        <link href="estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="WEB-INF/jspfs/meta.jspf"  %>  

    </head>
    <body>

        <nav>
            <ul>
                <a class="logo" href="index.jsp">Pelutalles </a>
                
                <center>
                    <li><a href="index.jsp"> Inicio </a> </li>
                    <li><a href="pages/nosotros.jsp"> Nosotros </a> </li>
                    <li><a href="pages/productos.jsp"> Productos </a> </li>
                    <li><a href="pages/contacto.jsp"> Contactanos </a> </li>
                </center>

            </ul>
        </nav> 
        <%@include file="WEB-INF/jspfs/js.jspf"  %>

        <div class="container ">
            <div class="row espaciotop">
                
                    <div class="col-12 col-lg-4"> 
                        <img src="https://i.ibb.co/THMNmQ2/logoeditado2019.png" width="300px">
                    </div>
                    <div class="col-12 col-lg-4">
                        <form action="loginServlet.do" method="post" > <!--onsubmit="return validar();"-->
                            <div class="form-group">
                                <label for="txtCorreo">Correo</label>
                                <input type="text" class="form-control" id="txtUsuario" name="txtUsuario"  placeholder="Enter email">
                                
                            </div>
                            <div class="form-group">
                                <label for="txtClave">Clave</label>
                                <input type="password" class="form-control" id="txtClave" name="txtClave" placeholder="Password">
                            </div>
                            
                            
                           
                            <div class="form-group form-check">
                               <button type="submit" class="btn btn-block btn-primary">Iniciar Sesion</button>
                            
                            </div>
                        </form>
                         <a href="<%=request.getContextPath()%>/registro_1.jsp"><button  class="btn btn-block btn-primary"> Registrarse</button></a>
                    </div>
                    <div class="col-12 col-lg-4"></div>


                </div>
        </div>


        <%@include file="WEB-INF/jspfs/js.jspf"  %>
        <!-- Material form login -->
        <script>
            $(document).ready(function () {
                $(window).bind('scroll', function () {
                    var navHeight = $(window).height() - 70;
                    if ($(window).scrollTop() > navHeight) {
                        $('nav').addClass('fixed');
                    } else {
                        $('nav').removeClass('fixed');
                    }
                });
            });

        </script>
    </body>
    <%@include file="WEB-INF/jspfs/footer.jspf"  %>
</html>
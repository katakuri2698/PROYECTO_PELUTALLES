<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <link href="../estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %>  

    </head>
    <body>

        <nav>
            <ul>
                <a class="logo" href="../index.jsp">Pelutalles </a>
                
                <center>
                    
                    <li><a href="../index.jsp"> Inicio </a> </li>
                    <li><a href="nosotros.jsp"> Nosotros </a> </li>
                    <li><a href="productos.jsp"> Productos </a> </li>
                    <li><a href="contacto.jsp"> Contactanos </a> </li>


                </center>

            </ul>
        </nav> 
        <%@include file="../WEB-INF/jspfs/js.jspf"  %>

        <div class="container ">
            <div class="row" >
                <div class="col"></div>
                <!-- Material form login -->
                <!-- Default form login -->
                <div class="col-6">
                    <form  method="post" action="loginServlet.do"  class="text-center border border-light p-5 formulogin">

                        <p class="h4 mb-4">Login</p>
                           <div class="form-group">
                        <!-- Email -->
                        <input type="text"  id="txtCorreo" name="txtCorreo" class="form-control mb-4" placeholder="E-mail">
                           </div>
                        <!-- Password -->
                        <div class="form-group">
                        <input type="password"  id="txtClave" name="txtClave" class="form-control mb-4" placeholder="Password">
                        </div>
                        <div class="d-flex justify-content-around">
                          
                            <div>
                                <!-- Forgot password -->
                                <a href="">Olvidaste tu contraseña?</a>
                            </div>
                        </div>

                        <!-- Sign in button -->
                        <button class="btn btn-info btn-block my-4" type="submit">Iniciar Sesión</button>

                        <!-- Register -->
                        <p>No eres un miembro?
                            <a href="">Registraste</a>
                        </p>
                    </form>
                    <!-- Default form login -->
                </div>
                <div class="col"></div>
            </div>
        </div>


        <%@include file="../WEB-INF/jspfs/js.jspf"  %>
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
    
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>
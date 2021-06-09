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
       
        <%@include file="../WEB-INF/jspfs/navglobal.jspf"  %>
        
        

        <%@include file="../WEB-INF/jspfs/js.jspf"  %>
        <div class="container">
<section class="mb-4">

    <!--Section heading-->
    <h2 class="h1-responsive font-weight-bold text-center my-4">Contactanos </h2>
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5">Puedes contactarte con nosootros llenando este formulario, cómo tambien puedes llamarnos y coordinar una cita en nuestra tienda física, estamos a total dispoción de ayudarte a escoger el mejor regalo</p>

    <div class="row">

        <!--Grid column-->
        <div class="col-md-9 mb-md-0 mb-5">
            <form id="contact-form" name="contact-form" action="mail.php" method="POST">

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="name" name="name" class="form-control">
                            <label for="name" class="">Tu nombre</label>
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="email" name="email" class="form-control">
                            <label for="email" class="">Tu correo</label>
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-0">
                            <input type="text" id="subject" name="subject" class="form-control">
                            <label for="subject" class="">Asunto</label>
                        </div>
                    </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-12">

                        <div class="md-form">
                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                            <label for="message">Tu mensaje</label>
                        </div>

                    </div>
                </div>
                <!--Grid row-->

            </form>

            <div class="text-center text-md-left">
                <a class="btn btn-outline-primary waves-effect btn-block" onclick="document.getElementById('contact-form').submit();">Enviar</a>
            </div>
            <div class="status"></div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-3 text-center">
            <ul class="list-unstyled mb-0">
                <li><i class="fas fa-map-marker-alt fa-2x"></i>
                    <p>Jr Andahuaylas 935 Int-111-112, Lima</p>
                </li>

                <li><i class="fas fa-phone mt-4 fa-2x"></i>
                    <p>+51 01 347 03 34</p>
                </li>

                <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                    <p>info@pelutalles.com</p>
                </li>
            </ul>
        </div>
        <!--Grid column-->

    </div>
</section>
        </div>
        <script> 
        new WOW().init();
        </script>
    </body>
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>
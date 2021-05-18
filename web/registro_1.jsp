<%-- 
    Document   : registro
    Created on : 08/06/2019, 06:01:34 PM
    Author     : LAB-USR-PT116-C509
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>

    <body>
        <div class="container-fluid">  
            <%@include file="WEB-INF/jspfs/css.jspf"  %>

            <%@include file="WEB-INF/jspfs/meta.jspf"  %> 



            <nav>
                <ul>
                    <a class="logo" href="<%=request.getContextPath()%>/index.jsp">Pelutalles </a>
                    <center>
                        <li><a href="<%=request.getContextPath()%>/index.jsp"> Inicio </a> </li>
                        <li><a href="<%=request.getContextPath()%>/pages/nosotros.jsp"> Nosotros </a> </li>
                        <li><a href="<%=request.getContextPath()%>/pages/productos.jsp"> Productos </a> </li>
                        <li><a href="<%=request.getContextPath()%>/pages/contacto.jsp"> Contactanos </a> </li>
                    </center>
                </ul>
            </nav> 


            <div class="contendorregistro">
                <!-- Grid row -->
                <div class="row pt-5 d-flex justify-content-center">

                    <!-- Grid column -->
                    <div class="col-md-2 pl-5 pl-md-0 pb-5">

                        <!-- Stepper -->
                      

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-7">

                        <form  action="registroservlet" method="post" >


                            <!-- First Step -->
                            <div class="row setup-content-3" id="step-5">
                                <div class="col-md-12">
                                    <h3 class="font-weight-bold pl-0 my-4"><strong>Información Básica</strong></h3>
                                    <div class="form-group md-form">
                                        <label for="txtCorreo" data-error="wrong" data-success="right">Correo</label>
                                        <input id="txtCorreo" type="email" name="txtCorreo" required="required" class="form-control validate">
                                    </div>
                                    <div class="form-group md-form">
                                        <label for="txtUsuario" data-error="wrong" data-success="right">Usuario</label>
                                        <input id="txtUsuario" type="text" name="txtUsuario" required="required" class="form-control validate">
                                    </div>
                                    <div class="form-group md-form mt-3">
                                        <label for="txtContrasena" data-error="wrong" data-success="right">Contraseña</label>
                                        <input id="txtContrasena" type="password" name="txtContrasena" required="required" class="form-control validate">
                                    </div>
                                   
                                  
                                </div>
                            </div>


                            <!-- Second Step -->
                            <div class="row setup-content-3" id="step-6">
                                <div class="col-md-12">
                                    <h3 class="font-weight-bold pl-0 my-4"><strong>Información Personal</strong></h3>
                                    <div class="form-group md-form">
                                        <label for="txtNombre" data-error="wrong" data-success="right">Nombres</label>
                                        <input id="txtNombre" type="text" name="txtNombre" required="required" class="form-control validate">
                                    </div>
                                    <div class="form-group md-form mt-3">
                                        <label for="txtApellidos" data-error="wrong" data-success="right">Apellidos</label>
                                        <input id="txtApellidos" type="text" name="txtApellidos" required="required" class="form-control validate">
                                    </div>
                                     <div class="form-group md-form mt-3">
                                        <label for="txtTelefono" data-error="wrong" data-success="right">Teléfono*</label>
                                        <input id="txtTelefono" type="text" name="txtTelefono"required="required" class="form-control validate">
                                    </div>
                                   
                                   
                                    
                                    
                                </div>
                            </div>


                       

                            <!-- Fourth Step -->
                            <div class="row setup-content-3" id="step-8">
                                <div class="col-md-12">
                             
                                    <button class="btn btn-pink accent-1 btn-rounded float-center" type="submit">Submit</button>
                                </div>
                            </div>
                        </form>

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->


                <%@include file="WEB-INF/jspfs/js.jspf"  %>
            </div> 

        </div>
           
    </body>

    <%@include file="WEB-INF/jspfs/footer.jspf"  %>
</html>

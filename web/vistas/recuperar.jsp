                                                                    <%-- 
    Document   : recuperar
    Created on : 08/06/2019, 06:01:43 PM
    Author     : LAB-USR-PT116-C509
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperar Conrtraseña</title>
    </head>
  <body>
        <div class="container-fluid">  
            <%@include file="WEB-INF/jspfs/cheader.jspf" %>
            <%@include file="WEB-INF/jspfs/cnav.jspf" %>
            <section>

                <div class="row">
                    <div class="col-12 col-lg-4"></div>
                    <div class="col-12 col-lg-4">
                        <form action="recuperarservlet.do" method="post" onsubmit="return validar();">
                            <div class="form-group">
                                <label for="txtCorreo">Correo</label>
                                <input type="text" class="form-control" id="txtCorreo" name="txtCorreo"  aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>                        
                            <button type="submit" class="btn btn-primary">Enviar clave a mi correo</button>
                        </form>
                    </div>
                    <div class="col-12 col-lg-4"></div>


                </div>

            </section>
            <%@include file="WEB-INF/jspfs/cfooter.jspf" %>
        </div> 
        <%@include file="WEB-INF/jspfs/cscripts.jspf" %>
    </body>
</html>

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

                <div class="row pt-n5">
                    

                    <div class="col-12 col-lg-4"><h2> Registraste en:  </h2> 
                        <img src="https://i.ibb.co/THMNmQ2/logoeditado2019.png" width="350px"></div>
                    <div class="col-12 col-lg-4">
                        
                        <form action="registroservlet" method="post" onsubmit="return validar();">
                            
                            
                            <div class="form-group">
                                <label for="txtCorreo">Usuario</label>
                                <input type="text" class="form-control" id="txtUsuario" name="txtUsuario"  aria-describedby="emailHelp" placeholder="Ingrese su usuario">
                            </div>
                            <div class="form-group">
                                <label for="txtClave">Contraseña</label>
                                <input type="password" class="form-control" id="txtContraseña" name="txtContraseña" placeholder="Contraseña">
                            </div>
                            <div class="form-group">
                                <label for="txtCorreo">Correo</label>
                                <input type="text" class="form-control" id="txtEmail" name="txtEmail"  aria-describedby="emailHelp" placeholder="Ingrese su correo">
                            </div>
                            <div class="form-group">
                                <label for="txtCorreo" >Nombre</label>
                                <input type="text" class="form-control " id="txtNombre" name="txtNombre"  aria-describedby="emailHelp" placeholder="Ingrese su nombre">
                            </div>
                            <div class="form-group">
                                <label for="txtCorreo">Apelllidos</label>
                                <input type="text" class="form-control" id="txtApellidos" name="txtApellidos"  aria-describedby="emailHelp" placeholder="Ingrese sus apellidos">
                            </div>
                            <div class="form-group">
                                <label for="txtCorreo">Telefono</label>
                                <input type="text" class="form-control" id="txtTelefono" name="txtTelefono"  aria-describedby="emailHelp" placeholder="Ingrese su Telefono">
                            </div>
                            
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="txtCheck">
                                <label class="form-check-label" for="exampleCheck1">Acepto los terminos  y condiciones</label>
                            </div>
                            <button type="submit" class="btn  pink accent-1" style="color:white;">Registrarse</button>
                            
                        </form>
                    </div>
                    <div class="col-12 col-lg-4"></div>


                </div>

            </section>
          <%@include file="WEB-INF/jspfs/js.jspf"  %>
        </div> 
  
    
    </body>
    <%@include file="WEB-INF/jspfs/footer.jspf"  %>
</html>

<%-- 
    Document   : agregarProductos
    Created on : 02/12/2019, 05:10:32 PM
    Author     : PedroCF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <link href="../estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %> 
        <%@include file="../WEB-INF/jspfs/navglobal.jspf"  %>

        <%@include file="../WEB-INF/jspfs/js.jspf"  %>
    </head>
    <body>
        <div class="container martop ">
            <div class="panelducto  mr-5 ml-5">
        <!-- Material form contact -->
        <div class="card mt-5 mr-5 ml-5 mb-5">

            <h5 class="card-header pink accent-1 white-text text-center py-4">
                <strong>Agregar producto</strong>
            </h5>

            <!--Card content-->
            <div class="card-body px-lg-5 pt-0">

                <!-- Form -->
                <form class="text-center" style="color: #ff80ab;" action="#!">

                    <!-- Name -->
                    <div class="md-form mt-3 ">
                        <input type="text" id="materialContactFormName" class="form-control">
                        <label for="materialContactFormName">Nombre de Producto</label>
                    </div>
                    
                      <div class="md-form">
                        <input type="email" id="materialContactFormEmail" class="form-control">
                        <label for="materialContactFormEmail">Precio Compra</label>
                    </div>
                    <div class="md-form">
                        <input type="email" id="materialContactFormEmail" class="form-control">
                        <label for="materialContactFormEmail">Precio Venta</label>
                    </div>
                    
                    <div class="md-form ">
                        <input type="email" id="materialContactFormEmail" class="form-control " >
                        <label  for="materialContactFormEmail" >Link de Imagen</label>
                    </div>
                    
                    <div class="md-form">
                        <input type="email" id="materialContactFormEmail" class="form-control">
                        <label for="materialContactFormEmail">Stock</label>
                    </div>

                    <!-- Subject -->
                    <span>Categoría</span>
                    <select class="mdb-select">
                        <option value="" selected>Almohadas Individual</option>
                        <option value="1">Almohadas Parejas</option>
                        <option value="2">Peluches</option>
                        <option value="3">Arreglo Florales</option>
                        <option value="4"></option>
                    </select>

                    <!--Message-->
                    <div class="md-form">
                        <textarea id="materialContactFormMessage" class="form-control md-textarea" rows="3"></textarea>
                        <label for="materialContactFormMessage">Descripcion</label>
                    </div>

                    <!-- Copy -->
                   

                    <!-- Send button -->
                    <button class="btn btn-outline-pink accent-1  btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Agregar Producto</button>

                </form>
                <!-- Form -->

            </div>

        </div>
        <!-- Material form contact -->
        
        </div>
            </div>
    </body>
    
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>

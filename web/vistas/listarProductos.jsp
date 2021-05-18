
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <!--<link href="../estilonav.css" rel="stylesheet" type="text/css"/> -->
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %> 
        <%@include file="../WEB-INF/jspfs/navglobal.jspf"  %>

        <%@include file="../WEB-INF/jspfs/js.jspf"  %>
    </head>
    <body class="">
        <h1 class="container">Listar Productos</h1>
        <div class="container ">
            <!--Table-->
            <section class="container"> 
                <table class="table table-hover table-fixed ">

                    <!--Table head-->
                    <thead>
                        <tr class="centrogol">
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Precio Compra</th>
                            <th>Precio Venta</th>
                            <th>Stock</th>
                            <th>Imagen</th>
                            <th>EDITAR</th>
                            <th>ELIMINAR</th>
                        </tr>
                    </thead>
                    <!--Table head-->

                    <!--Table body-->
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Jerry</td>
                            <td>Horwitz</td>
                            <td>Italy</td>
                            <td>Bari</td>
                            <td>Editor-in-chief</td>
                            <td> <IMG src="https://i.ibb.co/4Vw0B24/prueba4.png"  style="width:100px;" > </img></td>
                            <th> <i class="fas fa-edit"></i></th>
                            <th><i class="fas fa-times"></i></th>
                            
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Janis</td>
                            <td>Joplin</td>
                            <td>Poland</td>
                            <td>Warsaw</td>
                            <td>Video Maker</td>
                            <td>39</td>
                        </tr>

                    </tbody>
                    <!--Table body-->

                </table>
                <!--Table-->
            </section>
        </div>
    </body>

    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>

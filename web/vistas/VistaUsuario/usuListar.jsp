<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../../WEB-INF/jspfs/css.jspf"  %>
        <link href="estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../../WEB-INF/jspfs/meta.jspf"  %>  
        
    </head>
 <%@page import="dtos.UsuarioDTO"%>
 <%HttpSession sessions = request.getSession();%>
 <% String usuario = (String) request.getSession().getAttribute("usuario");%>
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


        <%
            String url = "jdbc:sqlserver://localhost:1433;databaseName=bdpelutalles";
            String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String user = "sa";
            String password = "alumno";
            Connection con = null;
            Class.forName(driver);

            con = DriverManager.getConnection(url, user, password);

            PreparedStatement ps;
            ResultSet rs;
            ps = con.prepareStatement("select * from usuario");
            rs = ps.executeQuery();
        %>
        <div class="container">        
    <center><h1 class="mt-2">Lista de Usuarios en el sistema</h1></center>
       </div> 
        <div class="container espaciotop">
            <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th class="th-sm">ID
                        </th>
                        <th class="th-sm">USUARIO
                        </th>
                         <th class="th-sm">CLAVE
                        </th>
                        <th class="th-sm">CORREO
                        </th>
                        <th class="th-sm">NOMBRES
                        </th>
                        <th class="th-sm">APELLIDOS
                        </th>
                        <th class="th-sm">TELEFONO
                        </th>
                        <th class="th-sm">TIPO USUARIO
                        </th>
                        <th class="th-sm">Estado
                        </th>
                        <th class="th-sm">EDITAR
                        </th>
                        <th class="th-sm">ELIMINAR
                        </th>
                    </tr>
                </thead>

                <tbody>

                    <%  while (rs.next()) {%>
                    <tr>
                        <td> <%= rs.getInt("id_usuario")%></td>
                        <td> <%= rs.getString("usuario")%></td>
                        <td> <%= rs.getString("clave")%></td>
                        <td> <%= rs.getString("correo")%></td>
                        <td> <%= rs.getString("nombres")%></td>
                        <td> <%= rs.getString("apellidos")%></td>
                        <td> <%= rs.getInt("telefono")%></td>
                        <td> <%= rs.getString("id_tipousuario")%></td>
                        <td> <%= rs.getInt("id_estado")%></td>
                        <td> <a href="../VistaUsuario/usuModificar.jsp?id=<%= rs.getInt("id_usuario")%>"><i class="fas fa-edit"></i></a></td>
                        <td><a href="vistas/usuEliminar.jsp?id=<%= rs.getInt("id_usuario")%>"><i class="fas fa-times"></i></a></td>
                    </tr>

                    <% }%>

                </tbody>

                <tfoot>

                </tfoot>
            </table>


        </div>

        <script>
            new WOW().init();
        </script>
    </body>
    <%@include file="../../WEB-INF/jspfs/footer.jspf"  %>
</html>
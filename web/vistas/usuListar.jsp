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
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <link href="estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %>  
    </head>


    <body>
        <%@include file="../WEB-INF/jspfs/nav.jspf"  %>


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
            ps = con.prepareStatement("select * from usuarios");
            rs = ps.executeQuery();
        %>

        <div class="container espaciotop">
            <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th class="th-sm">Id_Usuario
                        </th>
                        <th class="th-sm">Usuario
                        </th>
                         <th class="th-sm">Contraseña
                        </th>
                        <th class="th-sm">Correo
                        </th>
                        <th class="th-sm">Nombres
                        </th>
                        <th class="th-sm">Apellidos
                        </th>
                        <th class="th-sm">Telefono
                        </th>
                        <th class="th-sm">Tipo Usuario
                        </th>
                        <th class="th-sm">Estado
                        </th>
                        <th class="th-sm">Editar
                        </th>
                        <th class="th-sm">Eliminar
                        </th>
                    </tr>
                </thead>

                <tbody>

                    <%  while (rs.next()) {%>
                    <tr>
                        <td> <%= rs.getInt("id_usuarios")%></td>
                        <td> <%= rs.getString("usuario")%></td>
                        <td> <%= rs.getString("clave")%></td>
                        <td> <%= rs.getString("correo")%></td>
                        <td> <%= rs.getString("nombres")%></td>
                        <td> <%= rs.getString("apellidos")%></td>
                        <td> <%= rs.getInt("telefono")%></td>
                        <td> <%= rs.getString("tipo_usuario")%></td>
                        <td> <%= rs.getInt("estado")%></td>
                        <td> <a href="pages/usuModificar.jsp?id=<%= rs.getInt("id_usuarios")%>"><i class="fas fa-edit"></i></a></td>
                        <td><a href="pages/usuEliminar.jsp?id=<%= rs.getInt("id_usuarios")%>"><i class="fas fa-times"></i></a></td>
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
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>
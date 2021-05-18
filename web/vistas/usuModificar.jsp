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
            int id = Integer.parseInt(request.getParameter("id"));
            ps = con.prepareStatement("select * from usuarios where id_usuarios=" + id);
            rs = ps.executeQuery();
            while (rs.next()) {%>

        <div class="container ">
            <h1>Modificar Registros </h1>
            <hr>
            <form action="" method="post" class="form-control" style="widht:500px; height:400px;" >
                USUARIO:
                <input type="text" name="txtusuario" class="form-control" value="<%=rs.getString("usuario")%>" />
                CLAVE:
                <input type="text" name="txtclave" class="form-control" value="<%=rs.getString("clave")%>" />
                CORREO:
                <input type="text" name="txtcorreo" class="form-control" value="<%=rs.getString("correo")%>" />
                NOMBRES:
                <input type="text" name="txtnombres" class="form-control"  value="<%=rs.getString("nombres")%>"/>
                APELLIDOS:
                <input type="text" name="txtapellidos" class="form-control" value="<%=rs.getString("apellidos")%>" />
                TELEFONO:
                <input type="text" name="txttelefono" class="form-control" value="<%=rs.getInt("telefono")%>" />
                TIPO USUARIO:
                <input type="text" name="txttipousu" class="form-control"  value="<%=rs.getString("tipo_usuario")%>"/>
                ESTADO:
                <input type="text" name="txtestado" class="form-control"  value="<%=rs.getInt("estado")%>"/>
                <br>
                <a  href="pages/usuListar.jsp" >Regresar</a>
            </form>       
        </div>          
        <% } %>



        <script>
            new WOW().init();
        </script>
    </body>
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>
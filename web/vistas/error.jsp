<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String error =(String)request.getSession().getAttribute("error");%>
<html>
    <head>
        <title>Pelutalles</title>
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="../WEB-INF/jspfs/css.jspf"  %>
        <link href="estilonav.css" rel="stylesheet" type="text/css"/>
        <%@include file="../WEB-INF/jspfs/meta.jspf"  %>  
    </head>
    <body>
       
        <%@include file="../WEB-INF/jspfs/navglobal.jspf"  %>
        
        <h1>ERROR CAISTE EN UN BUCLE INFINITO, BORRA SYSTEM32 <br> <center><%=error%></center></h1>.
        
      

        <%@include file="../WEB-INF/jspfs/js.jspf"  %>


    </body>
    <%@include file="../WEB-INF/jspfs/footer.jspf"  %>
</html>
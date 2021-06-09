<%-- 
    Document   : index
    Created on : 23/04/2019, 03:35:58 PM
    Author     : PedroCF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
     
    <head>
        <title>Pelutalles</title>
        
        <link rel="icon" type="image/png" href="https://i.ibb.co/dDf8F7s/logo.png" />
        <%@include file="WEB-INF/jspfs/css.jspf"  %>
        <%@include file="WEB-INF/jspfs/meta.jspf"  %>  
   
        
    </head>
    <body>
        <%@include file="WEB-INF/jspfs/header.jspf"  %>
        
        
    

        <%@include file="WEB-INF/jspfs/js.jspf"  %>
 <script>
     new WOW().init();
   $('.carousel').carousel({
                interval: 1500
            });

            $(document).ready(function(){
                $(window).bind('scroll', function(){
            var navHeight = $(window).height() - 70;
            if ($(window).scrollTop() > navHeight){
                $('nav').addClass('fixed');
            }
            else{
            $('nav').removeClass('fixed');
        }
        });
        });
          
        </script>
       
    </body>
    <%@include file="WEB-INF/jspfs/footer.jspf"  %>
</html>

<%-- 
    Document   : paginaInicio
    Created on : 5/10/2020, 01:57:02 AM
    Author     : Emmanuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilosPaginaInicio.css" type="text/css" media="all">
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("txtUsuario") == null && session.getAttribute("nombre") == null){
            response.sendRedirect("index.html");
        }
        %>
    </head>
    <body>
        <div class="contenidoInicio">
            <h1>Hola <%=request.getSession().getAttribute("nombre")%>,¡Bienvenido! </h1>

            <p><a href="https://www.google.com">IR A GOOGLE</a></p>

            <p> Actualmente en uso: ${txtUsuario} </p>

            <form action="CerrarSesionServlet">
                <input type="submit" value="Cerrar Sesión">
            </form>
        </div>
    </body>
</html>

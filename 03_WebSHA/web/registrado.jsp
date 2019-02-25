<%-- 
    Document   : registrado
    Created on : 25-feb-2019, 13:00:36
    Author     : USUARIO
--%>

<%@page import="modelo.logica.ServicioUsuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Usuario"%>
<%@include file="head.jsp" %>
<html>
    <%= head()%>
    <body>
        <%@include file="header.jsp" %>
        <h1>Registrado correctamente</h1>
        <h2> <%= usuario.getNombre() + " - " + usuario.getEmail() %></h2>
    </body>
</html>

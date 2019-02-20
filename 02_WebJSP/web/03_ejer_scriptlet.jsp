<%-- 
    Document   : 03_ejer_scriptlet
    Created on : 19-feb-2019, 17:14:05
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de multiplicar</title>
    </head>
    <body>
        <h1>Tabla de multiplicar</h1>
        
        <%-- Mostrar una tabla con sus Trs, Tds, de la tabla del siete --%>
        <h2> Tabla de multiplicar del siete </h2>
        <table border="1">
            <% for (int i = 1; i <= 10; i++ ) { %>
            <% for (int j = 0; j <= 10; j++)  { %>
                
         <tr>
                <td><%= i + "*" %></td>
                <td><%= j + "=" %> </td>
                <td><%= i * j   %> </td>
            </tr>
            <% } %>
            <% } %>
        </table>
     </body>
</html>

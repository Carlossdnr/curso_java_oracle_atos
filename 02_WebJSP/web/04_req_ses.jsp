<%-- 
    Document   : 04_req_ses
    Created on : 20-feb-2019, 9:26:14
    Author     : Carlos Sáenz de Navarrete Rodríguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de peticions y respuestas en JSP</title>
    </head>
    <body>
        <h1>Gestión de peticiones y respuestas JSP</h1>
        <form action="04_req_ses.jsp" method="get">
            <p>Nombre y apellidos: </p>  
            <p><input type="text" name="nombre_apell" id="nombre_apell" 
                      autocomplete="true" size="50" maxlength="100"
                      required="true"
                      placeholder="Introduzca una descripción detallada"/></p>
            <p>Descripcion: </p>
            <textarea id="descripcion" name="descripcion" 
                      required="true" cols="100" rows="10"
                      placeholder="Introduzca una descripción detallada"> 
            </textarea>
            <p>Email: </p>
            <p><input id="email" type="text" name="email"
                      required="true" cols="100" rows="10"
                      placeholder="Introduzca un email" >
        </form>
        <%
            String nomApell = request.getParameter("nombre_apell");
            String desc = request.getParameter("descripcion");
            String email = request.getParameter("email");
            
            if (nomApell.length() > 1) {
                if (desc.length() > 5) {
                    // Validación del email
                    
                } else {
                    out.println("<h3>Pon una descripción </h3>");
                }
            } else {
                out.println("<h3>¿No tienes nombre?</h3>");
            }
            %>
    </body>
</html>

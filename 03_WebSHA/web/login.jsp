<%-- 
    Document   : login
    Created on : 20-feb-2019, 17:50:26
    Author     : Carlos Sáenz de Navarrete Rodríguez 
--%>
<html>
    <head>
        <title>Formulario HTML de login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Formulario HTML de login</div>    
        <form name="form1" method="post" action="http://localhost:8084/01WebServlet/login">

            <table border="1">
               <tr><td>Email</td><td>
                        <input type="email" name="email" id="email" value=""/>  </td></tr> 
                    <tr><td>Contraseña</td><td>
                        <input type="password" name="psswd" id="psswd" value=""/>  </td></tr> 
            </table>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>

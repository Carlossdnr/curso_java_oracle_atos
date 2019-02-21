<%-- 
    Document   : login
    Created on : 20-feb-2019, 17:50:26
    Author     : Carlos Sáenz de Navarrete Rodríguez 
--%>
<html>
    <head>
        <title>Formulario HTML de registro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Formulario HTML de registro</div>          
        <form name="form1" method="post" action="http://localhost:8084/01WebServlet/registro">

            <table border="1">
                <tr><td>Nombre:</td><td>
                        <input type="text" name="nom" id="nom" size="25" value=""/>  </td></tr>
                <tr><td>Edad:</td><td>
                        <input type="number" name="eda" id="eda" value=""/>  </td></tr> 
               <tr><td>Email</td><td>
                        <input type="email" name="email" id="email" value=""/>  </td></tr> 
                    <tr><td>Contraseña</td><td>
                        <input type="password" name="psswd" id="psswd" value=""/>  </td></tr> 
            </table>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>

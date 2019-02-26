<%-- 
    Document   : index
    Created on : 21-feb-2019, 20:42:40
    Author     : IEUser
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@include file="head.jsp" %>
<%--! ArrayList<Usuario> todosUsuarios; --%>
<%-- todosUsuarios = ServicioUsuarios.getInstancia().obtenerTodos(); --%>

<jsp:useBean id="listaUsuarios" type="java.util.ArrayList<Usuario>" scope="session">
    <jsp:getProperty property="*" name="listaUsuarios"/>
</jsp:useBean>

<html>
    <%= head() %>
    <body>
        <%@include file="header.jsp" %>
        <h1>Todos los usuarios</h1>

        <div border="2">            
            <%-- for (Usuario usu : todosUsuarios) { --%>
              <c:forEach items="${listaUsuarios}" var="usu">
                <form action="usuarios.do" method="post" name="form_${usu.id}<%-- usu.getId() --%>">                 
                    <input id="id" name="id" type="text"  size="4" readonly="true" value="${usu.id}"<%-- usu.getId()--%>/>
                    <input id="nombre" name="nombre" type="text" required="true" value="${usu.nombre}"<%-- usu.getNombre()--%>/>
                    <input id="edad" name="edad" type="number" required="true"  size="4" value="${usu.edad}"<%-- usu.getEdad()--%>/>
                    <input id="email" name="email" type="email" required="true" value = "${usu.email}"<%-- usu.getEmail()--%>/>
                    <input id="password" name="password" type="password" required="true" value="${usu.password}"/>
                    <input class="method" id="method" name="method" type="text" size="4" readonly="true" value="PUT"/>
                    
                    <input type="submit" value="EDIT" 
                           onclick="Array.from(document.getElementsByClassName('method')).forEach((thisInput) => { thisInput.value='PUT'; })"/>
                    <input type="submit" value="ELIM"                           
                           onclick="Array.from(document.getElementsByClassName('method')).forEach((thisInput) => { thisInput.value='DELETE'; })"/><br/>
                </form>
                <%-- } --%>
        </div>
         </c:forEach> 

    </body>
</html>


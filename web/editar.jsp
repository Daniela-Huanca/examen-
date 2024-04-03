<%@page import="com.emergentes.modelo.calificaciones"%>
<%
    calificaciones reg = (calificaciones) request.getAttribute("mical");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Calificaciones</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombre del Estudiante:</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre() %>"></td>
                </tr>
                <tr>
                    <td>Primer parcial (sobre 30 pts)</td>
                    <td><input type="text" name="p1" value="<%= reg.getP1() %>" ></td>
                </tr>
                <tr>
                    <td>Primer parcial (sobre 30 pts)</td>
                    <td><input type="text" name="p2" value="<%= reg.getP2() %>" ></td>
                </tr>
                <tr>
                    <td>Examen Final (sobre 40 pts)</td>
                    <td><input type="text" name="ef" value="<%= reg.getEf() %>" ></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
             </table>
        </form>
    </body>
</html>


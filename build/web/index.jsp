<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.calificaciones"%>
<%
    if(session.getAttribute("listacal") == null){
      ArrayList<calificaciones> lisaux = new ArrayList<calificaciones>();
      session.setAttribute("listacal", lisaux);
    }
    ArrayList<calificaciones> lista = (ArrayList<calificaciones>) session.getAttribute("listacal");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            margin: 0; 
            padding: 0; 
        }

        .contenedor-principal{
            display: flex;
            flex-direction: column; 
            justify-content: center; 
            align-items: center; 
            height: 90vh;
            background-color: #f0f0f0; 
        }
        

        .cuadro {
            background-color: #F0F0F0; 
            padding: 0px; 
            border: 3px solid #000; 
            width: 800px; 
            text-align: center; 
        }

        .cuadro h1 {
           margin: 0;
           padding: 5px;
           font-size: 24px; 
        }

        .cuadro p {
            font-size: 12px; 
        }

        .tabla {
            border-collapse: collapse;
            width: 50%; 
            text-align: center; 
            border: 1px solid #000; 

        .tabla th, .tabla td {
            padding: 10px;
            border: 1px solid #000; 
        }

        .nuevo-calificaciones {
            margin-top: 20px; 
        }
    </style>
</head>
<body>
    <div class="contenedor-principal">
        <div class="cuadro">
            <h1>PRIMER PARCIAL TEM-742</h1>
            <p>Nombre:<i> Daniela Tereza Huanca Ramirez</i></p>
            <p>Carnet: 9169630 lp</p>
        </div>
        <h1 style="font-size: 36px;">Registro de calificaciones</h1>
        <a href="MainServlet?op=nuevo" class="nuevo-calificaciones">Nuevo Pegistro</a>    
        <table class="tabla" border="1">
            <tr>
               <th>Id</th>
            <th>Nombre</th>
               <th>P1(30)</th>
               <th>P2(30)</th>
               <th>Ef(40)</th>
               <th>Nota</th>
               <th></th>
            </tr> 
            <% if (lista !=null){
               for(calificaciones item : lista){
            %>
            <tr>
               <td><%= item.getId() %></td>
               <td><%= item.getNombre()%></td>
               <td><%= item.getP1() %></td>
               <td><%= item.getP2() %></td>
               <td><%= item.getEf() %></td>
               <td><%= item.getNota()%></td>
               <td>
                   <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a> 
               </td>
               <td>
                <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                   onclick="return(confirm('esta seguro de eliminar?'))"
                   >Eliminar</a>   
               </td>
            </tr> 
            <%
            }
        }
            %>
        </table>
    </div>
</body>
</html>

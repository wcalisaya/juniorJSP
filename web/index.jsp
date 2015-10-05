<%-- 
    Document   : index
    Created on : 21/08/2015, 12:55:34 AM
    Author     : Magwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jsp/admin/conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/style.css">
    </head>
    <body>
        <%            
            consulta = "select * from guille ";
            ps = conex.prepareStatement(consulta);
            rs = ps.executeQuery();
        %>
        <div class="principal">
            <h2>GUILLERMO</h2>
            <form action="jsp/dao/guilleDao.jsp" method="POST">
                <input type="text" name="txtname" placeholder="nombre" required=""/><br>
                <input type="text" name="txtcargo" placeholder="cargo" required=""/><br>
                <input type="text" name="txtuser" placeholder="username"/><br>
                <input type="password" name="txtpass" placeholder="pass"/><br>

                <input type="hidden" name="accion" value="guardar">
                <input type="submit" name="Add" value="Agregar">
            </form>    
        </div>
        <br>
        <div class="listado">
            <table>
                <tr class="cabecera">
                    <th>Nombre</th>    
                    <th>Cargo</th>    
                    <th>username</th>
                    <th>OPT</th>
                </tr>            
                <% while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("cargo")%></td>
                    <td><%=rs.getString("username")%></td>  
                    <td><a href="edit.jsp?idG=<%=rs.getString("id")%>">Edit</a></td>
                    <td><a href="jsp/dao/guilleDao.jsp?accion=eliminar&idG=<%=rs.getString("id")%>"
                           onclick="return confirm('¿Estas seguro de ELIMINAR?');">Delet</a>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>

    </body>
</html>
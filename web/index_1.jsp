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
        <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
        <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
        <link rel="stylesheet" href="resources/style.css">
        
        <%  String valor = "%" + request.getParameter("txtbuscar") + "%";
                        consulta = "SELECT * FROM guille WHERE nombre LIKE ? OR cargo LIKE ? OR username LIKE ?";
                        ps = conex.prepareStatement(consulta);
                        ps.setString(1, valor);
                        ps.setString(2, valor);
                        ps.setString(3, valor);
                        rs = ps.executeQuery();
        %>
    </head>
    <body>
        <div class="principal">
            <h2>GUILLERMO</h2>
            <form action="jsp/dao/guilleDao.jsp" method="POST">
                <input type="text" name="nombre" placeholder="nombre wi" required=""/><br>
                <input type="text" name="cargo" placeholder="cargo" required=""/><br>
                <input type="text" name="user" placeholder="username"/><br>
                <input type="password" name="pass" placeholder="pass"/><br>

                <input type="hidden" name="accion" value="guardar">
                <input type="submit" name="Add" value="Agregar">
            </form>    
        </div>
        <br>
        <div class="listado">
            <table border="1">
                <tr>
                <form action="index_1.jsp" method="POST">
                    Buscar: 
                    <input type="text" value="" name="txtbuscar"/>
                    <input type="hidden" value="Buscar" name="accion"/>
                    <input type="submit" value="Search"/>
                </form>
                </tr>
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
                        <td><a href="jsp/dao/guilleDao.jsp?accion=eliminar&idG=<%=rs.getString("id")%>">eliminar</a></td>
                    </tr>
                    <%}%>
                    
            </table>
        </div>

    </body>
</html>
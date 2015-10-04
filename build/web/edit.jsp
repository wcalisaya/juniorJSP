<%-- 
    Document   : index
    Created on : 21/08/2015, 12:55:34 AM
    Author     : Magwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jsp/admin/conexion.jsp" %>
<%@include file="Model.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/style.css">
    </head>
    <body>
        
        <div class="principal">
            
            <form action="jsp/dao/guilleDao.jsp" method="POST">
                <input type="text" name="txtname" value="<%out.print(nombre);%>"/><br>
                <input type="text" name="txtcargo" value="<%out.print(cargo);%>" /><br>
                <input type="hidden" name="accion" value="guardar">
                <input type="hidden" name="id" value="<%out.print(idG);%>">
                <input type="submit" name="update" value="Actualizar">
            </form>    
        </div>
        <br>


    </body>
</html>
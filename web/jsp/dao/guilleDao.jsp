<%-- 
    Document   : guilleDao
    Created on : 21/08/2015, 01:05:40 AM
    Author     : Magwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../admin/conexion.jsp" %>

<%
String accion = request.getParameter("accion");

String nombre = request.getParameter("txtname");
String cargo = request.getParameter("txtcargo");
String user = request.getParameter("txtuser");
String pass = request.getParameter("txtpass");


if(accion.equals("guardar")){
    consulta = ("insert into guille (nombre, cargo, username, pass ) "
            + "values(?,?,?,?)");
    ps = conex.prepareStatement(consulta);
    ps.setString(1, nombre);
    ps.setString(2, cargo);
    ps.setString(3, user);
    ps.setString(4, pass);
    
    if(ps.executeUpdate()==1){
        response.sendRedirect("../../index.jsp");
    }else{
        out.print("no se pudo insertar");
    }
}else{
    if(accion.equals("eliminar")){
        Integer idG = Integer.parseInt(request.getParameter("idG"));
        
        consulta = ("delete from guille where id=?");
        ps = conex.prepareStatement(consulta);
        ps.setInt(1, idG);
        
        if(ps.executeUpdate()==1){
            out.println("se elimino ok");
            response.sendRedirect("../../index.jsp");
            
        };
    }
}      

        
%>
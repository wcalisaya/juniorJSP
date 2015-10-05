<%
    String accion = request.getParameter("accion") == null ? "" : request.getParameter("accion");
    String idG = request.getParameter("idG") == null ? "" : request.getParameter("idG");
    String nombre = request.getParameter("txtname") == null ? "" : request.getParameter("txtname");
    String cargo = request.getParameter("txtcargo") == null ? "" : request.getParameter("txtcargo");
    String user = request.getParameter("txtuser") == null ? "" : request.getParameter("txtuser");
    String pass = request.getParameter("txtpass") == null ? "" : request.getParameter("txtpass");
%>
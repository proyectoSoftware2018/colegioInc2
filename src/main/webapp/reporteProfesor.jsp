<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : reporteAlumno
    Created on : 18-sep-2018, 15:55:24
    Author     : alumno
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Pragma", "no-cache");
response.addHeader("Cache-control", "must-revalidate");
response.addHeader("Cache-control", "no-cache");
response.addHeader("Cache-control", "no-store");
response.setDateHeader("Expires", 0);

try{
if(session.getAttribute("usuario")==null){
request.getRequestDispatcher("index.jsp").forward(request, response);
}   
}catch(Exception e){
request.getRequestDispatcher("index.jsp").forward(request, response);
   
}


%>
<!DOCTYPE html>
<html>
    <%
        response.setHeader("Pragma", "no-cache");
        response.addHeader("Cache-control", "must-revalidate");
        response.addHeader("Cache-control", "no-cache");
        response.addHeader("Cache-control", "no-store");
        response.setDateHeader("Expires", 0);
    %>
    <%
        try {
            if (request.getSession().getAttribute("usuario") == null) {
                request.getRequestDispatcher("index.jsp");
            }
        } catch (Exception e) {
            request.getRequestDispatcher("index.jsp");
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include  file="WEB-INF/jspf/cabecera.jspf" %>      
        <%@include  file="WEB-INF/jspf/navAdministrador.jspf" %>
        <div class="container-fluid">

            <section>
                <div class="row">
                    <div class="col-2">

                    </div>
                    <div class="col-12">
                        <section>
                            <table class="table table-hover">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Dirección</th>
                                        <th>Ciudad</th>
                                        <th>Edad</th>
                                        <th>Tel. Casa</th>
                                        <th>Tel. Movil</th>
                                        <th>Correo</th>
                                        <th>Contraseña</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="lista" items="${sessionScope.lista}">
                                        <tr>
                                            <td>${lista.codigo}</td>
                                            <td>${lista.nombre}</td>
                                            <td>${lista.apellido}</td>
                                            <td>${lista.direccion}</td>
                                            <td>${lista.ciudad}</td>
                                            <td>${lista.edad}</td>
                                            <td>${lista.tcasa}</td>
                                            <td>${lista.tmovil}</td>
                                            <td>${lista.correo}</td>
                                            <td>${lista.contraseña}</td>

                                        </tr>

                                    </c:forEach>

                                </tbody>
                            </table>
                        </section>

                    </div>
                    <div class="col-2">

                    </div>

                </div>

        </div>
        <div class="py-3" style="text-align: center;">
            <a href="administrador.jsp" class="btn btn-primary">ir al panel de control</a>
        </div>
    </section>
    <%@include file="WEB-INF/jspf/footer.jspf" %> 
    <%@include file="WEB-INF/jspf/jsfooter.jspf" %> 

</body>
</html>

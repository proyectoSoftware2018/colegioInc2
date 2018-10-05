<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : reporteAlumno
    Created on : 18-sep-2018, 15:55:24
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <div class="container-fluid">
            <%@include  file="WEB-INF/jspf/cabecera.jspf" %>      
            <%@include  file="WEB-INF/jspf/navAdministrador.jspf" %>    
            <section>
                <div class="row justify-content-center">
                    <div class="col-2">

                    </div>

                    <div class="col-12 justify-content-center">
                       
                            <table class="table table-hover">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Cod.Usuario</th>
                                        <th>Nombre del alumno</th>
                                        <th>Dirección</th>
                                        <th>Sexo</th>
                                        <th>Grado</th>
                                        <th>Edad</th>
                                        <th>Dni</th>
                                        <th>Padre</th>
                                        <th>telefono</th>
                                        <th>contraseña</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="lista" items="${sessionScope.lista}">
                                        <tr>
                                            <td>${lista.usuario}</td>
                                            <td>${lista.nombreh} ${lista.apellidoh}</td>
                                            <td>${lista.direccionh}</td>
                                            <td>${lista.sexoh}</td>
                                            <td>${lista.grado}</td>
                                            <td>${lista.edadh}</td>
                                            <td>${lista.dnih}</td>
                                            <td>${lista.nombrep} ${lista.apellidop}</td>
                                            <td>${lista.telefonoh}</td>
                                            <td>${lista.contra}</td>
                                        </tr>

                                    </c:forEach>

                                </tbody>
                            </table>

                        
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

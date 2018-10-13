<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : reporteAlumno
    Created on : 18-sep-2018, 15:55:24
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include  file="WEB-INF/jspf/cabecera.jspf" %>  
         <%@include file="WEB-INF/jspf/navAdministrador.jspf" %>
        <%@include file="WEB-INF/jspf/navAdministrador2.jspf" %>

        <div id="page-content-wrapper container">
       
        
        <div class="row bg-light">
                <div class="col-12" style="height: 100%">
                        <section>
                            <table class="table table-hover table-responsive-lg table-responsive-md table-responsive-sm table-responsive-xl">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Cod.Usuario</th>
                                        <th style="text-align: center;">Nombre del alumno</th>
                                        <th>Dirección</th>
                                        <th>Sexo</th>
                                        <th>Grado</th>
                                        <th>Sección</th>
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
                                            <td>${lista.seccion}</td>
                                            <td>${lista.edadh}</td>
                                            <td>${lista.dnih}</td>
                                            <td>${lista.nombrep} ${lista.apellidop}</td>
                                            <td>${lista.telefonoh}</td>
                                            <td>${lista.contra}</td>
                                        </tr>

                                    </c:forEach>

                                </tbody>
                            </table>

                        </section>
                    </div>
        </div>
            <div class="py-3 bg-light" style="text-align: center;">
            <a href="administrador.jsp" class="btn btn-primary">ir al panel de control</a>
             <section></section> 
        </div>
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        </div>
    </div>

    <%@include file="WEB-INF/jspf/jsfooter.jspf" %> 
    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>

</body>
</html>

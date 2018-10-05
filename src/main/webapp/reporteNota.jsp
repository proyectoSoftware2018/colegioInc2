<%@page import="modelo.Nota"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.ListaProfesores"%>
<%@page import="modelo.ListaAlumnos"%>
<%@page import="modelo.ListaNotas"%>
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

        
        
        LinkedList<Nota> li = (LinkedList<Nota>) request.getSession().getAttribute("notas");
        ListaAlumnos la = new ListaAlumnos();
        

    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>


        <%@include  file="WEB-INF/jspf/cabecera.jspf" %>      
        <%@include  file="WEB-INF/jspf/navProfesor.jspf" %>    
        <div class="container-fluid">
            <section>
                <div class="row justify-content-center">
                    <div class="col-1">

                    </div>

                    <div class="col-12 justify-content-center">

                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>

                                    <th>codalumno</th>
                                    <th>profesor</th>
                                    <th>Nota Oral</th>
                                    <th>Nota Prac</th>
                                    <th>Nota Trab</th>
                                    <th>Nota Cuad</th>
                                    <th>Proceso</th>
                                    <th>Ex. Bimes.</th>
                                    <th>Promedio</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="lista" items="${sessionScope.notas}">
                                    <tr>
                                        <%for(int i=0; i<li.size(); i++){%>
                                        <td><%out.print(li.get(i).getAlumno());%> </td>
                                        <td><%out.print(li.get(i).getProfesor());%> </td>
                                        <%}%>
                                        <td>${lista.noral}</td>
                                        <td>${lista.nprac}</td>
                                        <td>${lista.ntrab}</td>
                                        <td>${lista.ncuad}</td>
                                        <td>${lista.proce}</td>
                                        <td>${lista.exabi}</td>
                                        <td>${lista.promedio}</td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>

                    <div class="col-1">

                    </div>

                </div>

        </div>
        <div class="py-3" style="text-align: center;">
            <a href="profesor.jsp" class="btn btn-primary">ir al panel de control</a>
        </div>
    </section>
    <%@include file="WEB-INF/jspf/footer.jspf" %> 
    <%@include file="WEB-INF/jspf/jsfooter.jspf" %> 

</body>
</html>

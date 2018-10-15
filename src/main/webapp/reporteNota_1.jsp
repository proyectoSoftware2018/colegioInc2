<%@page import="modelo.Profesor"%>
<%@page import="modelo.Alumno"%>
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

LinkedList<Nota> lis = (LinkedList<Nota>) request.getSession().getAttribute("notas");
%>
<html>

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

                                    <th>Alumno</th>
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
                           <%
                           for(int i=0 ; i< lis.size(); i++){
                           %>
                           <tr>
                               <td><%out.print(lis.get(i).getAlumno());%></td>
                               <td><%out.print(lis.get(i).getProfesor());%></td>
                               <td><%out.print(lis.get(i).getNoral());%></td>
                               <td><%out.print(lis.get(i).getNprac());%></td>
                               <td><%out.print(lis.get(i).getNtrab());%></td>
                               <td><%out.print(lis.get(i).getNcuad());%></td>
                               <td><%out.print(lis.get(i).getProce());%></td>
                               <td><%out.print(lis.get(i).getExabi());%></td>
                               <td><%out.print(lis.get(i).getPromedio());%></td>
                           </tr>
                           <%}%>


                            </tbody>
                        </table>
                    </div>

                    <div class="col-1">

                    </div>

                </div>
           </section>
        </div>
        <div class="py-3" style="text-align: center;">
            <a href="profesor.jsp" class="btn btn-primary">ir al panel de control</a>
        </div>
  
    <%@include file="WEB-INF/jspf/footer.jspf" %> 
    <%@include file="WEB-INF/jspf/jsfooter.jspf" %> 

</body>
</html>

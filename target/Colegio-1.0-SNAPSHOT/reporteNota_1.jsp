<%@page import="modelo.Curso"%>
<%@page import="modelo.ListaCursos"%>
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

    try {
        if (session.getAttribute("usuario") == null) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    } catch (Exception e) {
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    LinkedList<Nota> lis = (LinkedList<Nota>) request.getSession().getAttribute("notas");
    String gra = (String) request.getSession().getAttribute("gra");
    String cur = (String) request.getSession().getAttribute("cur");
    String sec = (String) request.getSession().getAttribute("sec");
    String pro = (String) request.getSession().getAttribute("pro");
    
    ListaCursos li1 = new ListaCursos();
    LinkedList<Curso> a = li1.select();
    ListaProfesores li2 = new ListaProfesores();
    LinkedList<Profesor> b = li2.select();
    ListaAlumnos li3 = new ListaAlumnos();
    LinkedList<Alumno> c = li3.select();
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
                <div class="form-row">
                    <div class="form-group col-md-6 col-lg-6">
                        <label for="inputState">Profesor:</label>
                                

                        <input class="form-control text-center" readonly="readonly"  value=" <%out.print(po.buscar(pro).getNombre() + " " + po.buscar(pro).getApellido());%>" name="grado"/>
                    </div>
                    <div class="form-group col-md-6 col-lg-6">
                        <label for="inputState">Area/Asignatura:</label>
                        <input class="form-control text-center" readonly="readonly"  value="<%out.print(li1.buscar(cur).getNombre());%>"  />
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 col-lg-6">
                        <label for="inputState">Grado</label>
                        <input class="form-control text-center" readonly="readonly"  value="<%out.print(gra);%>" name="seccion"/>
                    </div>
                    <div class="form-group col-md-6 col-lg-6">
                        <label for="inputState">Sección:</label>
                        <input class="form-control text-center" readonly="readonly"  value="<%out.print(sec);%>" name="seccion"/>
                    </div>
                </div>
                    <div class="row justify-content-center" id="bimestre1">
                    <div class="col-1">

                    </div>

                    <div class="col-12 justify-content-center">

                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>

                                    <th colspan="2">Apellidos y Nombres</th>
                                    <th>Bimestre</th>
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
                                   
                                    for (int i = 0; i < lis.size(); i++) {
                                     if(lis.get(i).getBime().equals("I")){
                                %>
                                <tr>
                                    <td colspan="2"><%out.print(li3.buscar(lis.get(i).getAlumno()).getNombreh() + " " + li3.buscar(lis.get(i).getAlumno()).getApellidoh());%></td>
                                    <td><%out.print(lis.get(i).getBime());%> &nbsp; Bimestre</td>
                                    <td><%out.print(lis.get(i).getNoral());%></td>
                                    <td><%out.print(lis.get(i).getNprac());%></td>
                                    <td><%out.print(lis.get(i).getNtrab());%></td>
                                    <td><%out.print(lis.get(i).getNcuad());%></td>
                                    <td><%out.print(lis.get(i).getProce());%></td>
                                    <td><%out.print(lis.get(i).getExabi());%></td>
                                    <td><%out.print(lis.get(i).getPromedio());%></td>
                                </tr>
                                <%}}%>


                            </tbody>
                        </table>
                    </div>

                    <div class="col-1">

                    </div>

                </div>
                <div class="row justify-content-center">
                    <div class="col-1">

                    </div>

                    <div class="col-12 justify-content-center" id="bimestre2">

                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>

                                    <th colspan="2">Apellidos y Nombres</th>
                                    <th>Bimestre</th>
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
                                   
                                    for (int i = 0; i < lis.size(); i++) {
                                        if(lis.get(i).getBime().equals("II")){
                                %>
                                <tr>
                                    <td colspan="2"><%out.print(li3.buscar(lis.get(i).getAlumno()).getNombreh() + " " + li3.buscar(lis.get(i).getAlumno()).getApellidoh());%></td>
                                    <td><%out.print(lis.get(i).getBime());%> &nbsp; Bimestre</td>
                                    <td><%out.print(lis.get(i).getNoral());%></td>
                                    <td><%out.print(lis.get(i).getNprac());%></td>
                                    <td><%out.print(lis.get(i).getNtrab());%></td>
                                    <td><%out.print(lis.get(i).getNcuad());%></td>
                                    <td><%out.print(lis.get(i).getProce());%></td>
                                    <td><%out.print(lis.get(i).getExabi());%></td>
                                    <td><%out.print(lis.get(i).getPromedio());%></td>
                                </tr>
                                <%}}%>


                            </tbody>
                        </table>
                    </div>

                    <div class="col-1">

                    </div>

                </div>
               <div class="row justify-content-center">
                    <div class="col-1">

                    </div>

                    <div class="col-12 justify-content-center" id="bimestre3">

                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>

                                    <th colspan="2">Apellidos y Nombres</th>
                                    <th>Bimestre</th>
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
                                   
                                    for (int i = 0; i < lis.size(); i++) {
                                        if(lis.get(i).getBime().equals("III")){
                                %>
                                <tr>
                                    <td colspan="2"><%out.print(li3.buscar(lis.get(i).getAlumno()).getNombreh() + " " + li3.buscar(lis.get(i).getAlumno()).getApellidoh());%></td>
                                    <td><%out.print(lis.get(i).getBime());%> &nbsp; Bimestre</td>
                                    <td><%out.print(lis.get(i).getNoral());%></td>
                                    <td><%out.print(lis.get(i).getNprac());%></td>
                                    <td><%out.print(lis.get(i).getNtrab());%></td>
                                    <td><%out.print(lis.get(i).getNcuad());%></td>
                                    <td><%out.print(lis.get(i).getProce());%></td>
                                    <td><%out.print(lis.get(i).getExabi());%></td>
                                    <td><%out.print(lis.get(i).getPromedio());%></td>
                                </tr>
                                <%}}%>


                            </tbody>
                        </table>
                    </div>

                    <div class="col-1">

                    </div>

                </div>
                <div class="row justify-content-center">
                    <div class="col-1">

                    </div>

                    <div class="col-12 justify-content-center" id="bimestre4">

                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>

                                    <th colspan="2">Apellidos y Nombres</th>
                                    <th>Bimestre</th>
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
                                   
                                    for (int i = 0; i < lis.size(); i++) {
                                        if(lis.get(i).getBime().equals("IV")){
                                    
                                %>
                                <tr>
                                    <td colspan="2"><%out.print(li3.buscar(lis.get(i).getAlumno()).getNombreh() + " " + li3.buscar(lis.get(i).getAlumno()).getApellidoh());%></td>
                                    <td><%out.print(lis.get(i).getBime());%> &nbsp; Bimestre</td>
                                    <td><%out.print(lis.get(i).getNoral());%></td>
                                    <td><%out.print(lis.get(i).getNprac());%></td>
                                    <td><%out.print(lis.get(i).getNtrab());%></td>
                                    <td><%out.print(lis.get(i).getNcuad());%></td>
                                    <td><%out.print(lis.get(i).getProce());%></td>
                                    <td><%out.print(lis.get(i).getExabi());%></td>
                                    <td><%out.print(lis.get(i).getPromedio());%></td>
                                </tr>
                                <%}}%>


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

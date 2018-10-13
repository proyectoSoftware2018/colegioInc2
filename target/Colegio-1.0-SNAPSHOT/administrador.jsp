<%-- 
    Document   : probando1
    Created on : 09/10/2018, 12:56:16 AM
    Author     : KandL
--%>
<%@page import="modelo.Grado"%>
<%@page import="modelo.ListaGrados"%>
<%@page import="modelo.Seccion"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.ListaSecciones"%>
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

 ListaSecciones ls = new ListaSecciones();
 LinkedList<Seccion> li= ls.select();
 ListaGrados ls2 = new ListaGrados();
 LinkedList<Grado> li2 = ls2.select();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
         
    </head>
<body>
    <%@include file="WEB-INF/jspf/cabecera.jspf" %>
    <%@include file="WEB-INF/jspf/navAdministrador.jspf" %>
    <%@include file="WEB-INF/jspf/navAdministrador2.jspf" %>
    <div id="page-content-wrapper container" >
            
                <main role="main" class="bg-light">

            <section class="jumbotron text-center">
                <div class="container" >
                    <h1 class="jumbotron-heading">BIENVENIDO ADMINISTRADOR</h1>
                    <p class="lead text-muted">Aqui podra administrar todo el colegio</p>
                    <img src="img/cole.png" alt="asd">


                </div>
            </section>

            <div class="album py-5 bg-light">
                <div class="container">

                    <div class="row justify-content-center">
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="alumnos" style="height: 100%; width: 100%; display: block;" src="img/foto4.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Aqui se podra Registrar a los Alumnos</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">

                                            <a href="registroAlumno.jsp" class="btn btn-sm btn-outline-secondary" >Registrar</a>
                                            <a href="#ventana1" class="btn btn-sm btn-outline-secondary"  data-toggle="modal">Listar</a>

                                        </div>
                                        <small class="text-muted">alumnos</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="profesores" style="height: 100%; width: 100%; display: block;" src="img/foto5.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Aqui se podra Registrar a los Profesores</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="registroProfesor.jsp" class="btn btn-sm btn-outline-secondary">Registrar</a>
                                            <a href="repoprofe.do" class="btn btn-sm btn-outline-secondary"  >Listar</a>
                                        </div>
                                        <small class="text-muted">Profesores</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="secciones" style="height: 100%; width: 100%; display: block;" src="img/seccion.jpg" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Modulo de las Secciones</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="registroSeccion.jsp" class="btn btn-sm btn-outline-secondary">Registrar</a>
                                            <a href="reporteSeccion.jsp" class="btn btn-sm btn-outline-secondary"  >Listar</a>
                                        </div>
                                        <small class="text-muted">Profesores</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="grados" style="height: 100%; width: 100%; display: block;" src="img/grado.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Modulo de los Grados</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="registroGrado.jsp" class="btn btn-sm btn-outline-secondary">Registrar</a>
                                            <a href="reporteGrado.jsp" class="btn btn-sm btn-outline-secondary"  >Listar</a>
                                        </div>
                                        <small class="text-muted">Grados</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="aulas" style="height: 100%; width: 100%; display: block;" src="img/aula.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Modulo de los Aulas</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="registroAulas.jsp" class="btn btn-sm btn-outline-secondary">Registrar</a>
                                            <a href="reporteAula.jsp" class="btn btn-sm btn-outline-secondary"  >Listar</a>
                                        </div>
                                        <small class="text-muted">Aulas</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="cursos" style="height: 100%; width: 100%; display: block;" src="img/libro.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Modulo de los Curso</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="registroCurso.jsp" class="btn btn-sm btn-outline-secondary">Registrar</a>
                                            <a href="reporteCurso.jsp" class="btn btn-sm btn-outline-secondary"  >Listar</a>
                                        </div>
                                        <small class="text-muted">Curso</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="Asignacion de cursos" style="height: 100%; width: 100%; display: block;" src="img/asignacion.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Modulo de los Asignación de Cursos</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="registroCurso.jsp" class="btn btn-sm btn-outline-secondary">Registrar Asignación</a>
                                        </div>
                                        <small class="text-muted">Asignación</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow">
                                <img class="card-img-top"  alt="notas" style="height: 100%; width: 100%; display: block;" src="img/nota.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Notas del Alumno</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="reponota.do" class="btn btn-sm btn-outline-secondary"  >Listar</a>
                                        </div>
                                        <small class="text-muted">notas</small>
                                    </div>
                                </div>
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
         
        </main>
            <div class="modal fade" id="ventana1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        
                        <div class="modal-header">
                            <h4 class="modal-title text-center">SELECCIONE AULA</h4> 
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form action="repoalumno.do" method="post">
                        <div class="modal-body">
                           <div class="form-row">
                                    <div class="form-group col-md-6 col-lg-6">
                                        <label for="inputState">Grado de estudio Primario:</label>
                                        <select id="inputState" class="form-control" name="grado">
                                            <%
                                                if (li2.size() == 0) {
                                                    out.print("<option value=" + 0 + ">No Hay Grados </option>");
                                                } else {
                                                    for (int i = 0; i < li2.size(); i++) {
                                               %>
                                                 <option value="<%out.print(li2.get(i).getNombre());%>"><%out.print(li2.get(i).getNombre());%></option>
                                                <%    }
                                                }

                                            %>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 col-lg-6">
                                        <label for="inputState">Sección:</label>
                                        <select id="inputState" class="form-control" name="comboSe">
                                            <%                                                    if (li.size() == 0) {
                                                    out.print("<option value=" + 0 + ">No Hay Sección </option>");
                                                } else {
                                                    for (int i = 0; i < li.size(); i++) {
                                                        out.print("<option value=" + li.get(i).getNombre() + "> Sección " + li.get(i).getNombre() + "</option>");
                                                    }
                                                }

                                            %>

                                        </select>
                                    </div>
                                </div>
                        </div>
                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary" >Guardar</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
             <%@include file="WEB-INF/jspf/footer.jspf" %>
        </div>
  
        
        
        
        
    </div>

    
    <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    
    
        <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>



</body>
</html>

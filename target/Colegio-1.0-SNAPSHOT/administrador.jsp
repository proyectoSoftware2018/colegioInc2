<%-- 
    Document   : index
    Created on : 12/09/2018, 07:12:56 PM
    Author     : ALUMNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>

    </head>
    <body>

        <%@include file="WEB-INF/jspf/cabecera.jspf" %>
        <%@include file="WEB-INF/jspf/navAdministrador.jspf" %>
        <main role="main">

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
                                            <a href="repoalumno.do" class="btn btn-sm btn-outline-secondary"  >Listar</a>

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

                    </div>
                </div>
            </div>

        </main>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    </body>
</html>

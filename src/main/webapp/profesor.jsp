<%-- 
    Document   : index
    Created on : 12/09/2018, 07:12:56 PM
    Author     : ALUMNO
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


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
        
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/cabecera.jspf" %>
        <%@include file="WEB-INF/jspf/navProfesor.jspf" %>
        
        <h2></h2>
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark py-3">
        <div class="col-md-12 px-0">
          <h1 class="text-center display-4 font-italic"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">BIENVENIDO PROFESOR ESTE ES SU MÓDULO</font></font></h1>
          <p class="text-center lead my-3"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Este módulo le permitira registrar y hacer reportes de las notas de los alumnos para la gestión de enseñanza.</font></font></p>
        </div>
      </div>
        
            <div class="album py-5 bg-light">
                <div class="container">

                    <div class="row justify-content-center">
                        <div class="col-md-4">
                            <div class="card mb-4 box-shadow text-white bg-dark">
                                <img class="card-img-top"  alt="notas" style="height: 100%; width: 100%; display: block;" src="img/nota.png" data-holder-rendered="true">
                                <div class="card-body">
                                    <p class="card-text">Notas del Alumno</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">

                                            <a href="registronota.do" class="btn btn-sm btn-outline-secondary" >Registrar</a>
                                            <a href="reponota.do" class="btn btn-sm btn-outline-secondary"  >Listar</a>

                                        </div>
                                        <small class="text-white">notas</small>
                                    </div>
                                </div>
                            </div>
                        </div>              
                    </div>
                </div>
            </div>

        
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    </body>
</html>

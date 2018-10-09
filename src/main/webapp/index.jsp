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
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>

    </head>
    <body>

        <%@include file="WEB-INF/jspf/cabecera.jspf" %>
        <%@include file="WEB-INF/jspf/nav.jspf" %>
        <%@include file="WEB-INF/jspf/carrusel.jspf" %>
        <section id="intro">
            <!-- Page Content -->
            <div class="container">
                <h1 class="my-4" style="color:#192a56;">BIENVENIDO AL COLEGIO I.E.P INMACULADA CONCEPCIÓN</h1>
                <!-- Marketing Icons Section -->
                <div class="row">
                    <div class="col-lg-4 mb-4">
                        <div class="card h-100">
                            <h4 class="card-header text-center" style="color:#0c2461;">VALORES EN LA ESCUELA</h4>
                            <div class="card-body">
                                <p class="card-text text-center">
                                    <strong>Amor:</strong> El amor es considerado como el conjunto de sentimientos que se manifiestan entre seres capaces de desarrollar inteligencia emocional o emocionalidad.<br>
                                    <strong>Paz:</strong> La paz es generalmente definida como un estado de tranquilidad o quietud, como una ausencia de disturbios, agitación o conflictos.<br>
                                    <strong>Libertad:</strong> La palabra designa la facultad del ser humano que le permite decidir llevar a cabo o no una determinada acción.<br>
                                    <strong>Puntualidad:</strong> El valor que se construye por el esfuerzo de estar a tiempo en el lugar adecuado.<br>
                                    <strong>Responsabilidad: </strong> Plantearse qué es la responsabilidad no es algo tan sencillo. <br>
                                    <strong>Sencillez:</strong> La Sencillez es esencial, sólo puede surgir cuando empezamos a comprender el significado del conocimiento propio.<br>
                                    <strong>Trabajo: </strong>es una de las principales actividades humanas y sociales.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4">
                        <div class="card h-100">
                            <h4 class="card-header text-center" style="color:#0c2461;">¿Cuáles son las razones para elegir el Colegio Inmaculada Concepción?</h4>
                            <div class="card-body">
                                <p class="card-text text-justify">
                                    Nuestro Colegio busca potenciar la formación integral y el desarrollo personal del alumno en acompañamiento con los padres. Esta tendencia responde al interés por una educación que conjugue las enseñanzas académicas con otros valores como la ética, la fe y la vida espiritual, la cultura, el respeto a la familia y a la convivencia.<br>
                                    Somos un Colegio comprometido con formar personas que desarrollen distintos aspectos de la existencia, combinando el estudio, los valores, la vida espiritual, los deportes, el arte y la vida social, potenciando al máximo sus recursos y habilidades personales.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4">
                        <div class="card h-100">
                            <h4 class="card-header" style="color:#0c2461;">FORMACIÓN DE LA FE</h4>
                            <div class="card-body">
                                <p class="card-text text-justify">Brindarles a sus hijos una sólida educación católica es ofrecerles los valores sobre los que pueden construir su vida. La formación espiritual es un asunto de vital importancia en nuestro Colegio. Colaborando con las familias, buscamos cultivar y hacer crecer la vida de fe en los estudiantes, quienes encuentran en la comunidad escolar un ámbito para acercarse más a Dios y adquirir los valores esenciales que les permitan desarrollarse sólidamente.<br>
                                    Procuramos para ello suscitar la vivencia cotidiana de la fe integral, pues en la medida en que comprendemos con nuestra mente los criterios de la fe y nos adherimos a ellos con el corazón, descubrimos como necesario y natural llevarlos coherentemente a la acción.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
        </section>
        <!-- Features Section -->
        <section id="info" style="background-color: #ffc048">
            <div class="container py-5">
                <div class="row" >
                    <div class="col-lg-6">
                        <h2 style="color:#192a56;">EL COLEGIO DE INDEPENDENCIA </h2>
                        <strong>QUE SEDES TENEMOS</strong>
                        <p>Tenemos unas sedes de:</p>
                        <p>- Inicial y Primaria</p>
                        <p>- Secundaria</p>
                        
                        <strong>GENERO</strong>
                        <p>Mixto</p>
                        <strong>GESTIÓN / DEPENDENCIA</strong>
                        <p>Privada - Particular</p> 
                        <strong>TURNO</strong>
                        <p>Continuo sólo en la mañana</p>
                        <strong>LOCALIDAD</strong> 
                        <p>JOSE GALVEZ</p>
                        <strong>CENTRO POBLADO</strong>
                        <p>INDEPENDENCIA</p>
                    </div>

                    <div class="col-lg-6">
                        <img class="img-fluid rounded" src="img/cole.png" alt="">
                    </div>     
                </div>
            </div>
        </section>
        <section id="ubi" style="background-color:  #c7ecee">
            <strong>DÓNDE ESTAMOS</strong>         
            <p>Calle Los Cedros/135/173-Av. Los Ficus/235 Lima</p> 
            <div>
                <div style="height:600px">

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.523033373786!2d-77.05270999999999!3d-12.00747!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTLCsDAwJzI2LjkiUyA3N8KwMDMnMDkuOCJX!5e0!3m2!1ses-419!2spe!4v1537370222334" style="display:block; width:100%; border:none;  margin:0; padding:0; height:100%;" allowfullscreen=""></iframe>
                </div>
                <!-- 

                
                
                -->
                <hr>
                <!-- Call to Action Section -->
                <div class="row mb-4">
                    <div class="col-md-8">
                        <p>Para cualquier consulta o quiere comunicarse con el colegio puede llamarnos al siguiente número</p>
                    </div>
                    <div class="col-md-4">
                        <div class="btn btn-lg btn-secondary btn-block">987564342</div>
                    </div>
                </div>
            </div>

        </section> 

        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    </body>
</html>

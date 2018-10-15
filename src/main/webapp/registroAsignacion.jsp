<%-- 
    Document   : registroProfesor
    Created on : 19-sep-2018, 17:21:03
    Author     : alumno
--%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.ListaCursos"%>
<%@page import="modelo.Profesor"%>
<%@page import="modelo.ListaProfesores"%>
<%@page import="modelo.Grado"%>
<%@page import="modelo.ListaGrados"%>
<%@page import="modelo.Seccion"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.ListaSecciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

    ListaSecciones ls = new ListaSecciones();
    LinkedList<Seccion> li = ls.select();
    ListaGrados ls2 = new ListaGrados();
    LinkedList<Grado> li2 = ls2.select();
    ListaProfesores ls3 = new ListaProfesores();
    LinkedList<Profesor> li3 = ls3.select();
    ListaCursos ls4 = new ListaCursos();
    LinkedList<Curso> li4 = ls4.select();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecera.jspf" %>     
        <%@include file="WEB-INF/jspf/navAdministrador.jspf" %>
        <%@include file="WEB-INF/jspf/navAdministrador2.jspf" %>

        <div id="page-content-wrapper container">

            <div class="container-fluid bg-light">

                <section>

                    <div class="row ">
                        <div class="col-12 col-md-12 col-lg-12"></div>
                        <div class="col-12 col-md-12 col-lg-12">
                            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                                <div class="col-md-12 px-0">
                                    <h1 class="text-center display-6 font-weight-bold"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Registro de Asignación </font></font></h1>
                                </div>
                            </div>
                            <form action="controladorasignacion.do" method="post">
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

                                <div class="form-row">
                                  <div class="form-group col-md-6 col-lg-6">
                                        <label for="inputState">Lista de Profesores:</label>
                                        <select id="inputState" class="form-control" name="comboPro">
                                            <%     if (li3.size() == 0) {
                                                    out.print("<option value=" + 0 + ">No Hay Profesores </option>");
                                                } else {
                                                    for (int i = 0; i < li3.size(); i++) {
                                                        out.print("<option value=" + li3.get(i).getCodigo() + ">" + li3.get(i).getNombre()+" "+li3.get(i).getApellido()+" </option>");
                                                    }
                                                }

                                            %>

                                        </select>
                                    </div>  
                                    <div class="form-group col-md-6 col-lg-6">
                                        <label for="inputState"> Lista de Cursos:</label>
                                        <select id="inputState" class="form-control" name="curso">
                                            <%
                                                if (li4.size() == 0) {
                                                    out.print("<option value=" + 0 + ">No Hay Cursos </option>");
                                                } else {
                                                    for (int i = 0; i < li4.size(); i++) {
                                               %>
                                                 <option value="<%out.print(li4.get(i).getCodigo());%>"><%out.print(li4.get(i).getNombre());%></option>
                                                <%    }
                                                }

                                            %>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <div style="text-align: center;">
                                    <button type="submit" class="btn btn-primary">Registrar</button> <a href="administrador.jsp" class="btn btn-danger">Cancelar</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
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

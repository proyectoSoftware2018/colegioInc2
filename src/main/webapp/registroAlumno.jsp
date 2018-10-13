<%-- 
    Document   : index
    Created on : 12/09/2018, 07:12:56 PM
    Author     : ALUMNO
--%>

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
 LinkedList<Seccion> li= ls.select();
 ListaGrados ls2 = new ListaGrados();
 LinkedList<Grado> li2 = ls2.select();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecera.jspf" %>
        <%@include file="WEB-INF/jspf/navAdministrador.jspf" %>
        <%@include file="WEB-INF/jspf/navAdministrador2.jspf" %>
        <div id="page-content-wrapper container">
            <div class="container-fluid bg-info">

                <section class="bg-info">

                    <div class="container col-12 col-lg-10 col-md-10 col-xl-10 col-xs-10 col-sm-10" >
                        <form action="controladoralumno.do" method="post" class="container" id="needs-validation" novalidate>
                            <div class="card">
                                <h5 class="card-header">Registro de Padre, Madre o Apoderado </h5>
                                <div class="card-body">


                                    <div class="container">


                                        <div class="row">
                                            <div class="form-group col-md-6 col-lg-6">
                                                <label for="inputState">Estado:</label>
                                                <select id="inputState" class="form-control" name="combo1">
                                                    <option selected value="0">ESTADO CIVIL:</option>
                                                    <option value="1">Soltero</option>
                                                    <option value="2">Casado</option>
                                                    <option value="3">Viudo</option>
                                                    <option value="4">Divorciado</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6 col-lg-6">
                                                <label for="inputState">Sexo:</label>
                                                <select id="inputState" class="form-control" name="combo2">
                                                    <option selected value="0">Elija:</option>
                                                    <option value="1">Hombre</option>
                                                    <option value="2">Mujer</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom01">Nombre</label>
                                                <input type="text" name="nomp" class="form-control" id="validationCustom01" placeholder="Ej: Mario" required>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom02">Apellidos</label>
                                                <input type="text" name="apep" class="form-control" id="validationCustom02" placeholder="Ej: Vargas" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3 col-lg-6">
                                                <label for="validationCustom03">DNI</label>
                                                <input type="text" name="dnip" class="form-control" id="validationCustom03" placeholder="Ej: 93456789" required>

                                            </div>
                                            <div class="col-md-3 mb-3 col-lg-6">
                                                <label for="validationCustom04">Telefono</label>
                                                <input type="number" name="fonop" class="form-control" id="validationCustom04" placeholder="Ej: 984567329" required>

                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 mb-3 col-lg-12">
                                                <label for="validationCustom04">Direccion</label>
                                                <input type="text" name="direp" class="form-control" id="validationCustom04" placeholder="Ej: San Camilo Mz. A Lt.1" required>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <br>

                            <%--todo sobre alumno--%> 
                            <div class="card">
                                <h5 class="card-header">Registro del Alumno </h5>
                                <div class="card-body">


                                    <div class="container">


                                        <div class="row">
                                            <div class="form-group col-md-4 col-lg-6">
                                                <label for="inputState">Grado de estudio Primario:</label>
                                                <select id="inputState" class="form-control" name="combo3">
                                                 <% 
                                                 if(li2.size()==0){
                                                   out.print("<option value="+0+">No Hay Grados </option>");  
                                                 }else{
                                                 for(int i=0; i<li2.size(); i++){ 
                                                 %>
                                                 <option value="<%out.print(li2.get(i).getNombre());%>"><%out.print(li2.get(i).getNombre());%></option>
                                                 <%} 
                                                 }
                                                 
                                                %>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-4 col-lg-6">
                                                <label for="inputState">Sexo:</label>
                                                <select id="inputState" class="form-control" name="combo4">
                                                    <option selected value="0">Elija:</option>
                                                    <option value="1">Hombre</option>
                                                    <option value="2">Mujer</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom01">Nombre</label>
                                                <input type="text" name="nomh" class="form-control" id="validationCustom01" placeholder="Ej: Mario" required>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom02">Apellidos</label>
                                                <input type="text" name="apeh" class="form-control" id="validationCustom02" placeholder="Ej: Vargas" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3 col-lg-6">
                                                <label for="validationCustom03">Departamento</label>
                                                <input type="text" name="deph" class="form-control" id="validationCustom03" placeholder="Ej: Lima" required>

                                            </div>
                                            <div class="col-md-3 mb-3 col-lg-6">
                                                <label for="validationCustom04">Distrito</label>
                                                <input type="text" name="dish" class="form-control" id="validationCustom04" placeholder="Ej: Independencia" required>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 col-lg-6">
                                                <label for="validationCustom03">DNI</label>
                                                <input type="text" name="dnih" class="form-control" id="validationCustom03" placeholder="Ej: 93456789" required>

                                            </div>
                                            <div class="col-md-2 col-lg-2">
                                                <label for="validationCustom04">Edad</label>
                                                <input type="number" name="edadh" class="form-control" id="validationCustom04" placeholder="Ej: 9" required>
                                            </div>
                                            <div class="form-group col-md-4 col-lg-4">
                                                <label for="inputState">Sección:</label>
                                                <select id="inputState" class="form-control" name="comboSe">
                                                <% 
                                                 if(li.size()==0){
                                                   out.print("<option value="+0+">No Hay Sección </option>");  
                                                 }else{
                                                 for(int i=0; i<li.size(); i++){ 
                                                    out.print("<option value="+li.get(i).getNombre()+"> Sección "+li.get(i).getNombre()+"</option>");
                                                 } 
                                                 }
                                                 
                                                %>
                                                 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 mb-3 col-lg-12">
                                                <label for="validationCustom04">Direccion</label>
                                                <input type="text" name="direh" class="form-control" id="validationCustom04" placeholder="Ej: San Camilo Mz. A Lt.1" required>

                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Observaciones del estudiante:</label>
                                            <textarea class="form-control" name="obseh" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>


                                        <div class="container col-12 col-lg-10 col-md-10 col-xl-10 col-xs-10 col-sm-10">
                                            <div class="card">
                                                <h5 class="card-header text-center">Registro del Cuenta</h5>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="mb-12 col-lg-12 col-md-12 col-xl-12 col-xs-12 col-sm-12 justify-content-center">
                                                            <label for="validationCustom01">Usuario</label>
                                                            <input type="text" name="usu" class="form-control" id="usuario" placeholder="Ej: Mario" >
                                                        </div>
                                                        <div class="mb-12 col-lg-12 col-md-12 col-xl-12 col-xs-12 col-sm-12 justify-content-center">
                                                            <label for="validationCustom02">Contraseña</label>
                                                            <input type="password" name="contra" class="form-control" id="contra1" placeholder="Ej: *****">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="text-align: center;" class="py-3 row">
                                                <div class="mb-12 col-lg-12 col-md-12 col-xl-12 col-xs-12 col-sm-12 justify-content-center">
                                                    <button type="submit" id="boton" class="btn btn-primary">Registrar</button>  
                                                    <a href="administrador.jsp" class="btn btn-danger">Cancelar</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>
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



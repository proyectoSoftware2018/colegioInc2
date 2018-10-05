<%-- 
    Document   : index
    Created on : 12/09/2018, 07:12:56 PM
    Author     : ALUMNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>



    </head>
    <body>
        <div class="conteiner-fluid">
            <%@include file="WEB-INF/jspf/cabecera.jspf" %>
            <%@include file="WEB-INF/jspf/navAdministrador.jspf" %>
            <section class="bg-info">

                <div class="container col-12 col-lg-10 " >
                    <form action="controladoralumno.do" method="post" class="container" id="needs-validation" novalidate>
                        <div class="card">
                            <h5 class="card-header">Registro de Padre, Madre o Apoderado </h5>
                            <div class="card-body">


                                <div class="container">


                                    <div class="row">
                                        <div class="form-group col-md-4 col-lg-6">
                                            <label for="inputState">Estado:</label>
                                            <select id="inputState" class="form-control" name="combo1">
                                                <option selected value="0">ESTADO CIVIL:</option>
                                                <option value="1">Soltero</option>
                                                <option value="2">Casado</option>
                                                <option value="3">Viudo</option>
                                                <option value="4">Divorciado</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4 col-lg-6">
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
                                                <option selected value="0" >Seleccione:</option>
                                                <option value="1">Primer Grado</option>
                                                <option value="2">Segundo Grado</option>
                                                <option value="3">Tercer Grado</option>
                                                <option value="4">Cuarto Grado</option>
                                                <option value="5">Quinto Grado</option>
                                                <option value="6">Sexto Grado</option>
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
                                        <div class="col-md-6 mb-3 col-lg-6">
                                            <label for="validationCustom03">DNI</label>
                                            <input type="text" name="dnih" class="form-control" id="validationCustom03" placeholder="Ej: 93456789" required>

                                        </div>
                                        <div class="col-md-3 mb-3 col-lg-6">
                                            <label for="validationCustom04">Edad</label>
                                            <input type="number" name="edadh" class="form-control" id="validationCustom04" placeholder="Ej: 9" required>

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


                                    <div class="container col-12 col-lg-6">
                                        <div class="card">
                                            <h5 class="card-header">Registro del Cuenta</h5>
                                            <div class="card-body">
                                                <div class="container col-12 col-lg-12">
                                                    <div class="col-md-8 mb-4 col-lg-10 justify-content-center">
                                                        <label for="validationCustom01">Usuario</label>
                                                        <input type="text" name="usu" class="form-control" id="usuario" placeholder="Ej: Mario" >
                                                    </div>
                                                    <div class="col-md-8 mb-4 col-lg-10 justify-content-center">
                                                        <label for="validationCustom02">Contraseña</label>
                                                        <input type="password" name="contra" class="form-control" id="contra1" placeholder="Ej: *****">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="text-align: center;" class="py-3">
                                            <button type="submit" id="boton" class="btn btn-primary">Registrar</button>  <a href="administrador.jsp" class="btn btn-danger">Cancelar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>





                </div>




            </section>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
            <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
        </div>
    </body>
</html>



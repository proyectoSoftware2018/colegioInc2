<%-- 
    Document   : jaja
    Created on : 12-oct-2018, 21:35:22
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <div class="container">
            <a href="#ventana1" class="btn btn-danger btn-lg" data-toggle="modal">boton</a>
            
            <div class="modal fade" id="ventana1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        
                        <div class="modal-header">
                            <h4 class="modal-title">Este es el encabezado</h4> 
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        
                        <div class="modal-body">
                            <p>assssssssssssssssssssssssssssssssssssssssssssssssssssd
                            sadsadsadsadsadsadsadsaaaaaaaaaaaaaaaaaaaaaa
                            aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaas
                            aaaaaaaaaaaaaaaa</p>
                        </div>
                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">ccerrar</button>
                            <button type="button" class="btn btn-primary" >Guardar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    </body>
</html>

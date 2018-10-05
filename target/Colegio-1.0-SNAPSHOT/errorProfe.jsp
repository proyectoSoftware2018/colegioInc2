<%-- 
    Document   : error
    Created on : 18/09/2018, 12:16:20 AM
    Author     : KandL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String error = (String) request.getSession().getAttribute("error");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecera.jspf" %>
        <%@include file="WEB-INF/jspf/navProfesor.jspf" %>
 <section>
        <section>
            <h3 class="text-center text-secondary"><%=error%></h3>
            <div style="text-align: center;">
                <a href="profesor.jsp" class="btn btn-primary">ir al panel de control</a>
            </div>
        </section>
</section>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    </body>
</html>

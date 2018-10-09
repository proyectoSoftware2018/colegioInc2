<%-- 
    Document   : index
    Created on : 12/09/2018, 07:12:56 PM
    Author     : ALUMNO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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



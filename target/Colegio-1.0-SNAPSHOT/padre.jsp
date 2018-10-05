<%-- 
    Document   : index
    Created on : 12/09/2018, 07:12:56 PM
    Author     : ALUMNO
--%>

<%@page import="modelo.Nota"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.ListaNotas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
        
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/cabecera.jspf" %> 
        <%@include file="WEB-INF/jspf/navPadre.jspf" %> 
      <% 
        ListaNotas liNo = new ListaNotas();
        LinkedList<Nota> lis = liNo.select();
        Nota n=null;
        if(liNo.buscarHijo(correo)==-1){
          String error = "todavia no tiene nota";
          request.getSession().setAttribute("error", error);
          request.getRequestDispatcher("errorPadre.jsp").forward(request, response);
        }else{
           n = lis.get(liNo.buscarHijo(correo)); 
        }
        
%>       
  
       <section>
           <h2></h2>
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark py-3">
        <div class="col-md-12 px-0">
          <h1 class="text-center display-4 font-italic"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">BIENVENIDO PADRE ESTE ES SU MÓDULO</font></font></h1>
          <p class="text-center lead my-3"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Las notas se mostratan en esta tabla</font></font></p>
         </div>
            <table class="table table-hover">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Cod.Usuario</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Nota Oral</th>
                                        <th>Nota Prac</th>
                                        <th>Nota Trab</th>
                                        <th>Nota Cuad</th>
                                        <th>Proceso</th>
                                        <th>Ex. Bimes.</th>
                                        <th>Promedio</th>
                                    </tr> 
                                </thead>
                                <tbody> 
                                   
                                        <tr>
                                            <td><% out.print(n.getCodigo());%></td>
                                            <td><% out.print(n.getNombre());%></td>
                                            <td><% out.print(n.getApellido());%></td>
                                            <td><% out.print(n.getNoral());%></td>
                                            <td><% out.print(n.getNprac());%></td>
                                            <td><% out.print(n.getNtrab());%></td>
                                            <td><% out.print(n.getNtrab());%></td>
                                            <td><% out.print(n.getProce());%></td>
                                            <td><% out.print(n.getExabi());%></td>
                                            <td><% out.print(n.getPromedio());%></td>
                                        </tr>
                                    

                                </tbody>
                            </table>
      </div>
        </div>
      </div>
                            

                        </section>
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
    </body>
</html>

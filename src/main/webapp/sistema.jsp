<%@page import="modelo.Nota"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.ListaNotas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
ListaNotas ln = new ListaNotas();
ln.select();
LinkedList<Nota> nota=ln.NotaPadre("ca10va");
String nombre ="",grado ="",seccion ="";
for(int i = 0 ; i< nota.size(); i++){
    nombre = nota.get(i).getAlumno();
    grado = nota.get(i).getGra();
    seccion = nota.get(i).getSec();
}

%>
<html ng-app>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/estilos.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/estilos.jspf" %>     
        <%@include file="WEB-INF/jspf/cabecera.jspf" %>
        <%@include file="WEB-INF/jspf/navPadre.jspf" %>
        <div class="row"  style="width: 100%">
            <div class="col-12">
            <table class="table table-hover table-light table-sm table-responsive">
  <thead>
      
    <!-----1----->
    <tr>    
        <th scope="col" colspan="13" class="text-center">"Año del Diálogo y la Reconciliación Nacional"</th>
        <td></td>
    </tr>
    
  </thead>
  
  <tbody>
      <!-----2----->
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      
      </tr>
      
      <!-----3----->
      <tr>
        <td scope="col" colspan="13" class="text-center">BOLETA DE INFORMACIÓN – AÑO ESCOLAR 2018</td>

      </tr>
      
      <!-----4----->
      <tr>
          <td scope="col" colspan="2" scope="row" rowspan="5">
              <div class="container">
                  <img src="img\escudo.png">
              </div>
          </td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td scope="col" colspan="2" scope="row" rowspan="5">
              <div class="container">
                  <img src="img\cole_1.png"
              </div>
          </td>
       
      </tr>
      
      <!-----5----->
      <tr>
        
        <td scope="col" colspan="2" class=" border border-danger">INSTITUCION EDUCATIVA</td>
        <td scope="col" colspan="6" class="text-center border border-danger"> LA INMACULADA CONCEPCION</td>
        <td></td>
     
       

      </tr>
      
      
      <!-----6----->
      <tr>
        
        <td scope="col" colspan="2" class="border border-danger">NIVEL EDUCATIVO</td>
        <td scope="col" colspan="6" class="text-center border border-danger"> PRIMARIA </td>
        <td></td>

      </tr>
      
      
      <!-----7----->
      <tr>
        
        <td scope="col" colspan="2" class="border border-danger">GRADO</td>
        <td scope="col" class="text-center border border-danger"><%out.print(grado);%></td>
        <td scope="col" colspan="2" class="text-center border border-danger">SECCION</td>
        <td scope="col" colspan="3" class="text-center border border-danger"><%out.print(seccion);%></td>
        <td></td>
       
      </tr>
      
      
      <!-----8----->
      <tr>
        
        <td scope="col" colspan="2" class="border border-danger">ESTUDIANTE</td>
        <td scope="col" colspan="6" class="text-center border border-danger"><%out.print(nombre);%></td>
        <td></td>
      
      </tr>
      
      
      <!-----9----->
      <tr>
          <td style="visibility: hidden">1</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
       
        
      </tr>
      
      
      <!-----10----->
      <tr >
        <td scope="col" colspan="3" scope="row" rowspan="2" class="text-center  border border-danger">AREAS CURRICULARES</td>
        <td scope="col" colspan="4" class="text-center border border-danger">PERIODOS DE EVALUACION</td>
        <td scope="col" colspan="6" class="text-center border border-danger">SITUACION FINAL DE EVALUACION</td>

      </tr>
      
      
      <!----11----->
      <tr>
          <td scope="col" class="text-center border border-danger">I</br> BIMESTRE</td>
        <td scope="col" class="text-center border border-danger">II BIMESTRE</td>
        <td scope="col" class="text-center border border-danger">III BIMESTRE</td>
        <td scope="col" class="text-center border border-danger">IV BIMESTRE</td>
        <td scope="col" colspan="2" class="text-center border border-danger">LOGRO ALCANZADO</td>
        <td scope="col" colspan="2" class="text-center border border-danger">AREAS CURRICULARES APROBADAS</td>
        <td scope="col" colspan="2" class="text-center border border-danger">REQUIERE RECUPERACION PEDAGOGICA</td>

      </tr>
      <%
        double proMat1=0,proMat2=0,proMat3=0,proMat4=0;
      for(int i = 0; i<nota.size();i++){
        if(nota.get(i).getBime().equals("I") && nota.get(i).getCur().equals("MAT")){
          proMat1=nota.get(i).getPromedio();
        }else if(nota.get(i).getBime().equals("II") && nota.get(i).getCur().equals("MAT")){
          proMat2=nota.get(i).getPromedio(); 
        }else if(nota.get(i).getBime().equals("III") && nota.get(i).getCur().equals("MAT")){
          proMat3=nota.get(i).getPromedio();  
        }else if(nota.get(i).getBime().equals("IV") && nota.get(i).getCur().equals("MAT")){
          proMat4=nota.get(i).getPromedio();  
        }  
      }
      %>
      
      <!-----12----->
      <tr>
        <td scope="col" class="text-center border border-danger">1.</td>
        <td scope="col" colspan="2" class="border border-danger">MATEMATICA</td>
        <td scope="col" class="text-center border border-danger"><%out.print(proMat1);%></td>
        <td scope="col" class="text-center border border-danger"><%out.print(proMat2);%></td>
        <td scope="col" class="text-center border border-danger"><%out.print(proMat3);%></td>
        <td scope="col" class="text-center border border-danger"><%out.print(proMat4);%></td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----13----->
      <tr>
        <td scope="col" class="text-center border border-danger">2.</td>
        <td scope="col" colspan="2" class="border border-danger">COMUNICACIÓN</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----14----->
      <tr>
        <td scope="col" class="text-center border border-danger">3.</td>
        <td scope="col" colspan="2" class="border border-danger">CIENCIA Y TECNOLOGÍA</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----15----->
      <tr>
        <td scope="col" class="text-center border border-danger">4.</td>
        <td scope="col" colspan="2" class="border border-danger">ARTE Y CULTURA</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----16----->
      <tr>
        <td scope="col" class="text-center border border-danger">5.</td>
        <td scope="col" colspan="2" class="border border-danger">PERSONAL SOCIAL</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----17----->
      <tr>
        <td scope="col" class="text-center border border-danger">6.</td>
        <td scope="col" colspan="2" class="border border-danger">EDUCACION FISICA</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----18----->
      <tr>
        <td scope="col" class="text-center border border-danger">7.</td>
        <td scope="col" colspan="2" class="border border-danger">EDUCACION RELIGIOSA</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
      
      
      <!-----19----->
      <tr>
        <td scope="col" class="text-center border border-danger">8.</td>
        <td scope="col" colspan="2" class="border border-danger">INGLES</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">A</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" class="text-center border border-danger">C</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA1</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA2</td>
        <td scope="col" colspan="2" class="text-center border border-danger">PURA LETRA3</td>

      </tr>
  </tbody>
</table>
                </div>
       </div> 
        
        <%@include file="WEB-INF/jspf/footer.jspf" %> 
        <%@include file="WEB-INF/jspf/jsfooter.jspf" %>
</body>
</html>

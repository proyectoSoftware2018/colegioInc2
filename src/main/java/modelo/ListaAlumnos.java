
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class ListaAlumnos {
    
    public LinkedList<Alumno> lista;
    private Conexion conn;
    private PreparedStatement ps;
    
    public ListaAlumnos(){
        lista = new LinkedList<Alumno>();
        conn = new Conexion();
        ps = null;
    }
    
    public LinkedList<Alumno> select() {
        try {
            ps = conn.getConnection().prepareCall("call ConsultarAlumno");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) //Esta es la forma correcta de recorrer los valores obtenidos de una consulta
            {
               String usuario = rs.getString(1);
               String nomh =rs.getString(2);
               String apeh =rs.getString(3);
               String dnih =rs.getString(4);
               String direh =rs.getString(5);
               String grado =rs.getString(6);
               String sexoh =rs.getString(7);
               String depa =rs.getString(8);
               String dis =rs.getString(9);
               String obs =rs.getString(10);
               int edad = rs.getInt(11);
               String nomp =rs.getString(12);
               String apep =rs.getString(13);
               String dnip =rs.getString(14);
               String direp =rs.getString(15);
               String estaCi =rs.getString(16);
               String sexop =rs.getString(17);
               int tel = rs.getInt(18);
               String contra =rs.getString(19);
               
               Alumno a = new Alumno(grado, sexoh, nomh, apeh, depa, direh, dnih, direh, obs, usuario, contra, estaCi, sexop, nomp, apep, dnip, direp, edad, tel);
               lista.add(a);
            }
            return lista;
        } catch (Exception e) {
            System.out.println("error");
            return null;
        }
        finally {

            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.desconectar();
                }
            } catch (SQLException ex) {
                System.out.println("error");
                
            }

        }
    }
    public int tama(){
        return lista.size();
    }
    public Alumno buscar(String alu){
        for(int i=0; i<tama();i++){
            if(lista.get(i).getUsuario().equalsIgnoreCase(alu)){
                
                return lista.get(i);
                
            }
        }
        return null;
    }
    
}

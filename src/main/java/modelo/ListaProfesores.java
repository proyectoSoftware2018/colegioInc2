package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class ListaProfesores {

    public LinkedList<Profesor> lista;
    private Conexion conn;
    private PreparedStatement ps;

    public ListaProfesores() {
        lista = new LinkedList<Profesor>();
        conn = new Conexion();
        ps = null;
    }

    public LinkedList<Profesor> select() {
        try {
            ps = conn.getConnection().prepareCall("call ConsultarProfesor");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) //Esta es la forma correcta de recorrer los valores obtenidos de una consulta
            {
                String codigo = rs.getString(1);
                String nombre = rs.getString(2);
                String apellido = rs.getString(3);
                String direccion = rs.getString(4);
                String ciudad = rs.getString(5);
                int edad = rs.getInt(6);
                int tcasa = rs.getInt(7);
                int tmovil = rs.getInt(8);
                String correo = rs.getString(9);
                String contra = rs.getString(10);

                Profesor a = new Profesor(codigo, nombre,apellido, direccion, ciudad, edad, tcasa, tmovil, correo, contra);
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
    public Profesor buscar(String pro){
        for(int i=0; i<tama();i++){
            if(lista.get(i).getCodigo().equalsIgnoreCase(pro)){
                
                return lista.get(i);
                
            }
        }
        return null;
    }
}

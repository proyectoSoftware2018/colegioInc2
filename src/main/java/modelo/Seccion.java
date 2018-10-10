
package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Seccion {
    String nombre;
    private Conexion conn;
    private PreparedStatement ps;

    public Seccion(String nombre) {
        this.nombre = nombre;
        conn = new Conexion();
        ps = null;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public boolean insert() {
        try {
            ps = conn.getConnection().prepareCall("call InsertarSeccion(?)");
            ps.setString(1, nombre);

            int filas = ps.executeUpdate();

            if (filas > 0) {
                System.out.print("bien");
            } else {
                System.out.print("mal");
            }
            return true;
        } catch (Exception e) {
            System.out.println("ErrorE");
            return false;
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
}

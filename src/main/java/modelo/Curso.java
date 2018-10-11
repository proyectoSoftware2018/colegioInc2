
package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Curso {
    String codigo, nombre;
    private Conexion conn;
    private PreparedStatement ps;

    public Curso(String codigo, String nombre) {
        this.codigo = codigo;
        this.nombre = nombre;
        conn = new Conexion();
        ps = null;
    }


    public boolean insert() {
        try {
            ps = conn.getConnection().prepareCall("call InsertarCurso(?,?)");
            ps.setString(1, codigo);
            ps.setString(2, nombre);

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

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    
    
}

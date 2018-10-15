
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class ListaNotas {
    
    public LinkedList<Nota> lista;
    private Conexion conn;
    private PreparedStatement ps;
    
    public ListaNotas(){
        lista = new LinkedList<Nota>();
        conn = new Conexion();
        ps = null;
    }
    
    public LinkedList<Nota> select() {
        try {
            ps = conn.getConnection().prepareCall("call ConsultarNotas");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) //Esta es la forma correcta de recorrer los valores obtenidos de una consulta
            {
               String alu =rs.getString(1);
               String profe =rs.getString(2);
               int nor = rs.getInt(3);
               int nop = rs.getInt(4);
               int not = rs.getInt(5);
               int noc = rs.getInt(6);
               int nob = rs.getInt(7);
               double pro = rs.getDouble(8);
               double prom = rs.getDouble(9);
                        
               Nota a = new Nota(alu, profe, nor, nop, not, noc, nob, pro, prom);
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
    
        public int buscarHijo(String usu){
        
        for(int i=0; i<tama();i++){
            if(lista.get(i).getAlumno().equalsIgnoreCase(usu)){
                return i;
            }
        }
        
        return -1;
    }
    
    
}


package modelo;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static Connection conn;
    
  
   //conexion localhost
    public static final String driver="com.mysql.jdbc.Driver";
    public static final String user="root";
    public static final String pass="12345678";
    public static final String url = "jdbc:mysql://localhost:3306/colegio";
  
    /* 
   //conexion openshift
    public static final String driver="com.mysql.jdbc.Driver";
    public static final String user="root";
    public static final String pass="root";
    public static final String url = "jdbc:mysql://mysql:3306/colegio";
    */
  
    public Conexion() {
        conn=null;
        try {
            Class.forName(driver);
            conn = (Connection) DriverManager.getConnection(url,user,pass);
            if(conn!=null){
                System.out.println("conexion");
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("error");
        }
    }
    
    public Connection getConnection(){
        return conn;
    }
    
    public void desconectar(){
        conn=null;
        if(conn == null){
            System.out.println("terminado");
        }
    }
}

package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAOusuario {

    Usuario usu;
    String cod, contra;
    private Conexion conn;
    private PreparedStatement ps;

    public DAOusuario(Usuario usu) {
        this.usu = usu;
        conn = new Conexion();
        ps = null;
    }

    public Usuario getUsu() {
        return usu;
    }

    public void setUsu(Usuario usu) {
        this.usu = usu;
    }
// esto valida a los usuarios ok
    public boolean validar() {
        boolean res = false;
        switch (usu.getTipo()) {
            case 1:
                if (usu.getCodigo().equals("admin@gmail.com") && usu.getContra().equals("123456")) {
                    res = true;
                }
                break;
          // este es cuando es profe
            case 2:
                try {
                    ps = conn.getConnection().prepareCall("call LoginProfesor(?)");
                    ps.setString(1, usu.getCodigo());
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) //Esta es la forma correcta de recorrer los valores obtenidos de una consulta
                    {
                        cod = rs.getString(1);
                        contra = rs.getString(2);

                    }
                    if (usu.getCodigo().equals(cod) && usu.getContra().equals(contra)) {
                        res = true;
                    }

                } catch (Exception e) {
                    res = false;
                }

                break;
            case 3:
                // este es cuando es padre
                //aqui cambiamos el procedimiento almacenado se llama loginPadre
                //esto es para enviarle el parametro ahi le envio
                 try {
                    ps = conn.getConnection().prepareCall("call LoginPadre(?)");
                    ps.setString(1, usu.getCodigo());
                    //aqui lo ejecuto y lo recupero el select en RS
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) //Esta es la forma correcta de recorrer los valores obtenidos de una consulta
                    {
                        //cuando el select regresa te da 2 cosas el usuario y la contra
                        //aqui lo capturo entendes jaj si ps es que es con procedimientos
                        cod = rs.getString(1);
                        contra = rs.getString(2);

                    }
                    //aqui comparo si existe o no ps
                    if (usu.getCodigo().equals(cod) && usu.getContra().equals(contra)) {
                        res = true;
                    }

                } catch (Exception e) {
                    res = false;
                }
                break;
            default:
                res = false;
        }
        return res;
    }
}


package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Alumno {
    public String grado,sexoh,nombreh,apellidoh,deparh,distritoh,dnih,direccionh,obserh,usuario,contra;
    public String estado,sexop,nombrep,apellidop,dnip,seccion;
    public int edadh,telefonoh;
    private Conexion conn;
    private PreparedStatement ps;

    public Alumno(String grado,String seccion, String sexoh, String nombreh, String apellidoh, String deparh, String distritoh, String dnih, String direccionh, String obserh, String usuario, String contra, String estado, String sexop, String nombrep, String apellidop, String dnip, int edadh, int telefonoh) {
        this.grado = grado;
        this.sexoh = sexoh;
        this.nombreh = nombreh;
        this.apellidoh = apellidoh;
        this.deparh = deparh;
        this.distritoh = distritoh;
        this.dnih = dnih;
        this.direccionh = direccionh;
        this.obserh = obserh;
        this.usuario = usuario;
        this.contra = contra;
        this.estado = estado;
        this.sexop = sexop;
        this.nombrep = nombrep;
        this.apellidop = apellidop;
        this.dnip = dnip;
        this.seccion = seccion;
        this.edadh = edadh;
        this.telefonoh = telefonoh;
        conn = new Conexion();
        ps = null;
    }


     public boolean insert() {
        try {
            ps = conn.getConnection().prepareCall("call InsertarAlumno(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, usuario);
            ps.setString(2, nombreh);
            ps.setString(3, apellidoh);
            ps.setString(4, dnih);
            ps.setString(5, direccionh);
            ps.setString(6, grado);
            ps.setString(7, seccion);
            ps.setString(8, sexoh);
            ps.setString(9, deparh);
            ps.setString(10, distritoh);
            ps.setString(11, obserh);
            ps.setInt(12, edadh);
            ps.setString(13, nombrep);
            ps.setString(14, apellidop);
            ps.setString(15, dnip);
            ps.setString(16, estado);
            ps.setString(17, sexop);
            ps.setInt(18, telefonoh);
            ps.setString(19, contra);
            int filas = ps.executeUpdate();

            if (filas > 0) {
                System.out.print("inserto");
            } else {
                System.out.print("nooo");
            }
            return true;
        } catch (Exception e) {
            System.out.println("error");
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

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }

    public String getSexoh() {
        return sexoh;
    }

    public void setSexoh(String sexoh) {
        this.sexoh = sexoh;
    }

    public String getNombreh() {
        return nombreh;
    }

    public void setNombreh(String nombreh) {
        this.nombreh = nombreh;
    }

    public String getApellidoh() {
        return apellidoh;
    }

    public void setApellidoh(String apellidoh) {
        this.apellidoh = apellidoh;
    }

    public String getDeparh() {
        return deparh;
    }

    public void setDeparh(String deparh) {
        this.deparh = deparh;
    }

    public String getDistritoh() {
        return distritoh;
    }

    public void setDistritoh(String distritoh) {
        this.distritoh = distritoh;
    }

    public String getDnih() {
        return dnih;
    }

    public void setDnih(String dnih) {
        this.dnih = dnih;
    }

    public String getDireccionh() {
        return direccionh;
    }

    public void setDireccionh(String direccionh) {
        this.direccionh = direccionh;
    }

    public String getObserh() {
        return obserh;
    }

    public void setObserh(String obserh) {
        this.obserh = obserh;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getSexop() {
        return sexop;
    }

    public void setSexop(String sexop) {
        this.sexop = sexop;
    }

    public String getNombrep() {
        return nombrep;
    }

    public void setNombrep(String nombrep) {
        this.nombrep = nombrep;
    }

    public String getApellidop() {
        return apellidop;
    }

    public void setApellidop(String apellidop) {
        this.apellidop = apellidop;
    }

    public String getDnip() {
        return dnip;
    }

    public void setDnip(String dnip) {
        this.dnip = dnip;
    }


    public int getEdadh() {
        return edadh;
    }

    public void setEdadh(int edadh) {
        this.edadh = edadh;
    }

    public int getTelefonoh() {
        return telefonoh;
    }

    public void setTelefonoh(int telefonoh) {
        this.telefonoh = telefonoh;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }

    
    
    
    
    
    
    
}

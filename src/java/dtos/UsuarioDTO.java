/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;


public class UsuarioDTO {
    private int id;
    private String usuario;
    private String clave;
    private String correo;
    private String nombres;
    private String apellidos;
    private int telefono;
    private String tipo_usuario;
    private int estado;
   

    public UsuarioDTO() {
    }

    public UsuarioDTO(String usuario2, String clave) {
        this.usuario = usuario2;
        this.clave = clave;
    }
  
   
    public UsuarioDTO(String usuario, String clave, String correo, String nombres, String apellidos, int telefono, String tipo_usuario, int estado) {
        this.usuario = usuario;
        this.clave = clave;
        this.correo = correo;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.telefono = telefono;
        this.tipo_usuario = tipo_usuario;
        this.estado = estado;
    }

      
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(String tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
    
    

   
    

   
    
    
}

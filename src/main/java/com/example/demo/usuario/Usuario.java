package com.example.demo.usuario;

public  class Usuario {
    private Integer id_user ;
    private String username ;
    private String password ;
    private Boolean superuser ;
    private String email ;
    private String ruc_dni_cliente ;
    private String telefono ;
    private String direcccion_fiscal  ;
    private Boolean anulado ;

    public Usuario() {
    }

    public Usuario(Integer id_user, String username, String password, Boolean superuser, String email, String ruc_dni_cliente, String telefono, String direcccion_fiscal, Boolean anulado) {
        this.id_user = id_user;
        this.username = username;
        this.password = password;
        this.superuser = superuser;
        this.email = email;
        this.ruc_dni_cliente = ruc_dni_cliente;
        this.telefono = telefono;
        this.direcccion_fiscal = direcccion_fiscal;
        this.anulado = anulado;
    }

    public Integer getId_user() {
        return id_user;
    }
    public void setId_user(Integer id_user) {
        this.id_user = id_user;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public Boolean getSuperuser() {
        return superuser;
    }
    public void setSuperuser(Boolean superuser) {
        this.superuser = superuser;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getRuc_dni_cliente() {
        return ruc_dni_cliente;
    }
    public void setRuc_dni_cliente(String ruc_dni_cliente) {
        this.ruc_dni_cliente = ruc_dni_cliente;
    }
    public String getTelefono() {
        return telefono;
    }
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getDirecccion_fiscal() {
        return direcccion_fiscal;
    }
    public void setDirecccion_fiscal(String direcccion_fiscal) {
        this.direcccion_fiscal = direcccion_fiscal;
    }
    public Boolean getAnulado() {
        return anulado;
    }
    public void setAnulado(Boolean anulado) {
        this.anulado = anulado;
    }

}

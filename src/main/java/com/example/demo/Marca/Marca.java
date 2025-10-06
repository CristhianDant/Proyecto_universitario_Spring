package com.example.demo.Marca;

public class Marca {

    private int idMarca;
    private String nombreMarca;
    private String procedencia;

    public Marca(int idMarca, String nombreMarca, String procedencia) {
        this.idMarca = idMarca;
        this.nombreMarca = nombreMarca;
        this.procedencia = procedencia;
    }

    public Marca() {
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getNombreMarca() {
        return nombreMarca;
    }

    public void setNombreMarca(String nombreMarca) {
        this.nombreMarca = nombreMarca;
    }

    public String getProcedencia() {
        return procedencia;
    }

    public void setProcedencia(String procedencia) {
        this.procedencia = procedencia;
    }
}

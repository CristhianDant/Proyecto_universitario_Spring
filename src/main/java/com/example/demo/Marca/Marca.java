package com.example.demo.Marca;

public class Marca {

    private int idMarca;
    private String nombreMarca;
    private String procedencia;
    private boolean anulado;
    private String link_imaguen;
    private String descripcion;

    public Marca(int idMarca, String nombreMarca, String procedencia, boolean anulado, String link_imaguen, String descripcion) {
        this.idMarca = idMarca;
        this.nombreMarca = nombreMarca;
        this.procedencia = procedencia;
        this.anulado = anulado;
        this.link_imaguen = link_imaguen;
        this.descripcion = descripcion;
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

    public boolean isAnulado() {
        return anulado;
    }

    public void setAnulado(boolean anulado) {
        this.anulado = anulado;
    }

    public String getLink_imaguen() {
        return link_imaguen;
    }

    public void setLink_imaguen(String link_imaguen) {
        this.link_imaguen = link_imaguen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}

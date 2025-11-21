package com.example.demo.Producto_2;

public class Producto {

    private int id_producto;
    private String nombre_producto;
    private String descripcion;
    private double precio;
    private int id_marca;
    private String link_imaguen;
    private boolean anulado;


    public Producto() {
    }

    public Producto(int id_producto, String nombre_producto, String descripcion, double precio, int id_marca, String link_imaguen, boolean anulado) {
        this.id_producto = id_producto;
        this.nombre_producto = nombre_producto;
        this.descripcion = descripcion;
        this.precio = precio;
        this.id_marca = id_marca;
        this.link_imaguen = link_imaguen;
        this.anulado = anulado;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getLink_imaguen() {
        return link_imaguen;
    }

    public void setLink_imaguen(String link_imaguen) {
        this.link_imaguen = link_imaguen;
    }

    public boolean isAnulado() {
        return anulado;
    }

    public void setAnulado(boolean anulado) {
        this.anulado = anulado;
    }
}

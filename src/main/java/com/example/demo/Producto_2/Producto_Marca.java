package com.example.demo.Producto_2;

public class Producto_Marca extends Producto {
    private String nombre_marca;

    public Producto_Marca() {
        super();
    }

    public Producto_Marca(int id_producto, String nombre_producto, String descripcion, double precio, int id_marca, String link_imaguen, String nombre_marca, boolean anulado) {
        super(id_producto, nombre_producto, descripcion, precio, id_marca, link_imaguen, anulado);
        this.nombre_marca = nombre_marca;
    }

    public String getNombre_marca() {
        return nombre_marca;
    }

    public void setNombre_marca(String nombre_marca) {
        this.nombre_marca = nombre_marca;
    }
}

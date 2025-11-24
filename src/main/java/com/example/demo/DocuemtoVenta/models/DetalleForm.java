package com.example.demo.DocuemtoVenta.models;

import java.math.BigDecimal;

public class DetalleForm {
    private int idProducto;
    private int cantidad;
    private BigDecimal precio;

    // Getters and Setters
    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }
}

package com.example.demo.Producto;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Producto {

    private int idProducto;
    private String codProducto;
    private String descripcion;
    private int um;
    private LocalDate vencimiento;
    private BigDecimal cantidad;
    private int almacen;
    private String marca;
    private int procedencia;

    public Producto(int idProducto, String codProducto, String descripcion, int um,
                   LocalDate vencimiento, BigDecimal cantidad, int almacen,
                   String marca, int procedencia) {
        this.idProducto = idProducto;
        this.codProducto = codProducto;
        this.descripcion = descripcion;
        this.um = um;
        this.vencimiento = vencimiento;
        this.cantidad = cantidad;
        this.almacen = almacen;
        this.marca = marca;
        this.procedencia = procedencia;
    }

    public Producto() {
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getCodProducto() {
        return codProducto;
    }

    public void setCodProducto(String codProducto) {
        this.codProducto = codProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getUm() {
        return um;
    }

    public void setUm(int um) {
        this.um = um;
    }

    public LocalDate getVencimiento() {
        return vencimiento;
    }

    public void setVencimiento(LocalDate vencimiento) {
        this.vencimiento = vencimiento;
    }

    public BigDecimal getCantidad() {
        return cantidad;
    }

    public void setCantidad(BigDecimal cantidad) {
        this.cantidad = cantidad;
    }

    public int getAlmacen() {
        return almacen;
    }

    public void setAlmacen(int almacen) {
        this.almacen = almacen;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getProcedencia() {
        return procedencia;
    }

    public void setProcedencia(int procedencia) {
        this.procedencia = procedencia;
    }
}
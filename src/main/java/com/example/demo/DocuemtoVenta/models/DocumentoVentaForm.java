package com.example.demo.DocuemtoVenta.models;

import java.math.BigDecimal;
import java.util.List;

public class DocumentoVentaForm {
    private String razonSocial;
    private String direccionEntrega;
    private String referencia;
    private List<DetalleForm> detalles;

    // Getters and Setters
    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getDireccionEntrega() {
        return direccionEntrega;
    }

    public void setDireccionEntrega(String direccionEntrega) {
        this.direccionEntrega = direccionEntrega;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public List<DetalleForm> getDetalles() {
        return detalles;
    }

    public void setDetalles(List<DetalleForm> detalles) {
        this.detalles = detalles;
    }

}

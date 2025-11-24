package com.example.demo.DocuemtoVenta.models;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

public class DocumentoVenta {
    private int idDocumento;
    private String razonSocial;
    private String nroSerie;
    private String nroDocumento;
    private String direccionEntrega;
    private String referencia;
    private BigDecimal total;
    private Timestamp fechaCreacion;
    private Date fechaVencimiento;
    private Date fechaEntrega;
    private int idUser;

    // Constructor vacío
    public DocumentoVenta() {}

    // Constructor completo
    public DocumentoVenta(int idDocumento, String razonSocial, String nroSerie, String nroDocumento,
                         String direccionEntrega, String referencia, BigDecimal total,
                         Timestamp fechaCreacion, Date fechaVencimiento, Date fechaEntrega, int idUser) {
        this.idDocumento = idDocumento;
        this.razonSocial = razonSocial;
        this.nroSerie = nroSerie;
        this.nroDocumento = nroDocumento;
        this.direccionEntrega = direccionEntrega;
        this.referencia = referencia;
        this.total = total;
        this.fechaCreacion = fechaCreacion;
        this.fechaVencimiento = fechaVencimiento;
        this.fechaEntrega = fechaEntrega;
        this.idUser = idUser;
    }

    // Getters y Setters
    public int getIdDocumento() {
        return idDocumento;
    }

    public void setIdDocumento(int idDocumento) {
        this.idDocumento = idDocumento;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getNroSerie() {
        return nroSerie;
    }

    public void setNroSerie(String nroSerie) {
        this.nroSerie = nroSerie;
    }

    public String getNroDocumento() {
        return nroDocumento;
    }

    public void setNroDocumento(String nroDocumento) {
        this.nroDocumento = nroDocumento;
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

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public Timestamp getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Timestamp fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
}

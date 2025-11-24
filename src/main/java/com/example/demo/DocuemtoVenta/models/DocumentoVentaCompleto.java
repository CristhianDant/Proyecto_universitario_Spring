package com.example.demo.DocuemtoVenta.models;

import java.util.List;

import com.example.demo.DocuemtoVenta.models.DetalleDocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DocumentoVenta;

public class DocumentoVentaCompleto {
    private DocumentoVenta documento;
    private List<DetalleDocumentoVenta> detalles;

    public DocumentoVentaCompleto() {}

    public DocumentoVentaCompleto(DocumentoVenta documento, List<DetalleDocumentoVenta> detalles) {
        this.documento = documento;
        this.detalles = detalles;
    }

    public DocumentoVenta getDocumento() {
        return documento;
    }

    public void setDocumento(DocumentoVenta documento) {
        this.documento = documento;
    }

    public List<DetalleDocumentoVenta> getDetalles() {
        return detalles;
    }

    public void setDetalles(List<DetalleDocumentoVenta> detalles) {
        this.detalles = detalles;
    }
}

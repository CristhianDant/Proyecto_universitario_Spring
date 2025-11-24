package com.example.demo.DocuemtoVenta;

import java.sql.Date;
import java.util.List;

import com.example.demo.DocuemtoVenta.models.DetalleDocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DocumentoVentaCompleto;

public interface DocumentoVentaService {
    // Listar documentos de venta entre fechas (solo encabezados)
    List<DocumentoVenta> listarDocumentosEntreFechas(Date fechaInicio, Date fechaFin);

    // Obtener un documento de venta con su detalle
    DocumentoVentaCompleto obtenerDocumentoConDetalle(int idDocumento);

    // Crear documento de venta
    int crearDocumentoVenta(DocumentoVenta documento, List<DetalleDocumentoVenta> detalles);

    // Anular documento de venta
    int anularDocumentoVenta(int idDocumento);
}

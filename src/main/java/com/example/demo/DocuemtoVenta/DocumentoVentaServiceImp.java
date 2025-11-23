package com.example.demo.DocuemtoVenta;

import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

@Service
public class DocumentoVentaServiceImp implements DocumentoVentaService {

    private final DocumentoVentaDAO documentoVentaDAO;

    public DocumentoVentaServiceImp(DocumentoVentaDAO documentoVentaDAO) {
        this.documentoVentaDAO = documentoVentaDAO;
    }

    @Override
    public List<DocumentoVenta> listarDocumentosEntreFechas(Date fechaInicio, Date fechaFin) {
        if (fechaInicio == null || fechaFin == null) {
            throw new IllegalArgumentException("Las fechas de inicio y fin son obligatorias");
        }

        if (fechaInicio.after(fechaFin)) {
            throw new IllegalArgumentException("La fecha de inicio no puede ser posterior a la fecha de fin");
        }

        return documentoVentaDAO.listarDocumentosEntreFechas(fechaInicio, fechaFin);
    }

    @Override
    public DocumentoVentaCompleto obtenerDocumentoConDetalle(int idDocumento) {
        if (idDocumento <= 0) {
            throw new IllegalArgumentException("El ID del documento debe ser mayor a 0");
        }

        DocumentoVentaCompleto documentoCompleto = documentoVentaDAO.obtenerDocumentoConDetalle(idDocumento);

        if (documentoCompleto == null || documentoCompleto.getDocumento() == null) {
            throw new IllegalArgumentException("Documento de venta no encontrado con ID: " + idDocumento);
        }

        return documentoCompleto;
    }

    @Override
    public int crearDocumentoVenta(DocumentoVenta documento, List<DetalleDocumentoVenta> detalles) {
        // Validaciones de negocio
        if (documento == null) {
            throw new IllegalArgumentException("El documento de venta es obligatorio");
        }

        if (detalles == null || detalles.isEmpty()) {
            throw new IllegalArgumentException("El documento debe tener al menos un detalle");
        }

        // Validar datos del documento
        validarDocumento(documento);

        // Validar detalles y calcular total
        BigDecimal totalCalculado = validarYCalcularTotal(detalles);

        // Verificar que el total coincida
        if (documento.getTotal().compareTo(totalCalculado) != 0) {
            throw new IllegalArgumentException("El total del documento no coincide con la suma de los detalles. " +
                                             "Total documento: " + documento.getTotal() +
                                             ", Total calculado: " + totalCalculado);
        }

        // Crear el documento
        return documentoVentaDAO.crearDocumentoVenta(documento, detalles);
    }

    @Override
    public int anularDocumentoVenta(int idDocumento) {
        if (idDocumento <= 0) {
            throw new IllegalArgumentException("El ID del documento debe ser mayor a 0");
        }

        // Verificar que el documento existe antes de anularlo
        DocumentoVentaCompleto documentoCompleto = obtenerDocumentoConDetalle(idDocumento);

        // Aquí podríamos agregar lógica adicional como:
        // - Verificar permisos del usuario
        // - Verificar estado del documento
        // - Crear registro de auditoría
        // - etc.

        return documentoVentaDAO.anularDocumentoVenta(idDocumento);
    }

    // Método privado para validar documento
    private void validarDocumento(DocumentoVenta documento) {
        if (documento.getRazonSocial() == null || documento.getRazonSocial().trim().isEmpty()) {
            throw new IllegalArgumentException("La razón social es obligatoria");
        }

        if (documento.getNroSerie() == null || documento.getNroSerie().trim().isEmpty()) {
            throw new IllegalArgumentException("El número de serie es obligatorio");
        }

        if (documento.getNroDocumento() == null || documento.getNroDocumento().trim().isEmpty()) {
            throw new IllegalArgumentException("El número de documento es obligatorio");
        }

        if (documento.getTotal() == null || documento.getTotal().compareTo(BigDecimal.ZERO) <= 0) {
            throw new IllegalArgumentException("El total debe ser mayor a 0");
        }

        if (documento.getIdUser() <= 0) {
            throw new IllegalArgumentException("El ID de usuario debe ser mayor a 0");
        }
    }

    // Método privado para validar detalles y calcular total
    private BigDecimal validarYCalcularTotal(List<DetalleDocumentoVenta> detalles) {
        BigDecimal total = BigDecimal.ZERO;

        for (DetalleDocumentoVenta detalle : detalles) {
            if (detalle.getIdProducto() <= 0) {
                throw new IllegalArgumentException("El ID del producto debe ser mayor a 0");
            }

            if (detalle.getCantidad() <= 0) {
                throw new IllegalArgumentException("La cantidad debe ser mayor a 0");
            }

            if (detalle.getPrecioUnitario() == null || detalle.getPrecioUnitario().compareTo(BigDecimal.ZERO) <= 0) {
                throw new IllegalArgumentException("El precio unitario debe ser mayor a 0");
            }

            if (detalle.getSubtotal() == null) {
                throw new IllegalArgumentException("El subtotal es obligatorio");
            }

            // Verificar que el subtotal sea correcto
            BigDecimal subtotalCalculado = detalle.getPrecioUnitario().multiply(BigDecimal.valueOf(detalle.getCantidad()));
            if (detalle.getSubtotal().compareTo(subtotalCalculado) != 0) {
                throw new IllegalArgumentException("El subtotal del detalle no es correcto. " +
                                                 "Calculado: " + subtotalCalculado +
                                                 ", Indicado: " + detalle.getSubtotal());
            }

            total = total.add(detalle.getSubtotal());
        }

        return total;
    }
}

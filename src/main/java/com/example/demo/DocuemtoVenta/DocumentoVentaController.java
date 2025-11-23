package com.example.demo.DocuemtoVenta;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/documentos-venta")
public class DocumentoVentaController {

    private final DocumentoVentaService documentoVentaService;

    public DocumentoVentaController(DocumentoVentaService documentoVentaService) {
        this.documentoVentaService = documentoVentaService;
    }

    // Listar documentos entre fechas
    @GetMapping("/")
    public String listarDocumentos(
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaInicio,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaFin,
            Model model) {

        // Si no se proporcionan fechas, usar el mes actual
        if (fechaInicio == null) {
            LocalDate hoy = LocalDate.now();
            fechaInicio = Date.valueOf(hoy.withDayOfMonth(1));
        }
        if (fechaFin == null) {
            fechaFin = Date.valueOf(LocalDate.now());
        }

        try {
            List<DocumentoVenta> documentos = documentoVentaService.listarDocumentosEntreFechas(fechaInicio, fechaFin);
            model.addAttribute("documentos", documentos);
            model.addAttribute("fechaInicio", fechaInicio);
            model.addAttribute("fechaFin", fechaFin);
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
        }

        return "documento_de_venta/listado";
    }

    // Ver detalle de un documento
    @GetMapping("/{id}")
    public String verDocumento(@PathVariable int id, Model model) {
        try {
            DocumentoVentaCompleto documentoCompleto = documentoVentaService.obtenerDocumentoConDetalle(id);
            model.addAttribute("documentoCompleto", documentoCompleto);
            return "documento_de_venta/detalle";
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
            return "redirect:/documentos-venta/";
        }
    }

    // Mostrar formulario de creación
    @GetMapping("/crear")
    public String mostrarCrearDocumento(Model model) {
        model.addAttribute("documento", new DocumentoVenta());
        return "documento_de_venta/crear";
    }

    // Crear documento (POST)
    @PostMapping("/crear")
    public String crearDocumento(
            @RequestParam String razonSocial,
            @RequestParam String nroSerie,
            @RequestParam String nroDocumento,
            @RequestParam(required = false) String direccionEntrega,
            @RequestParam(required = false) String referencia,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaVencimiento,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaEntrega,
            @RequestParam int idUser,
            // Datos del carrito (simulado por ahora)
            @RequestParam String productosJson,
            RedirectAttributes redirectAttributes) {

        try {


            DocumentoVenta documento = new DocumentoVenta();
            documento.setRazonSocial(razonSocial);
            documento.setNroSerie(nroSerie);
            documento.setNroDocumento(nroDocumento);
            documento.setDireccionEntrega(direccionEntrega);
            documento.setReferencia(referencia);
            documento.setFechaVencimiento(fechaVencimiento);
            documento.setFechaEntrega(fechaEntrega);
            documento.setIdUser(idUser);

            BigDecimal total = BigDecimal.ZERO;
            List<DetalleDocumentoVenta> detalles = List.of(); // Aquí iría la lógica real

            documento.setTotal(total);

            int idDocumento = documentoVentaService.crearDocumentoVenta(documento, detalles);

            redirectAttributes.addFlashAttribute("success", "Documento creado exitosamente con ID: " + idDocumento);
            return "redirect:/documentos-venta/" + idDocumento;

        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", e.getMessage());
            return "redirect:/documentos-venta/crear";
        }
    }

    // Anular documento
    @PostMapping("/{id}/anular")
    public String anularDocumento(@PathVariable int id, RedirectAttributes redirectAttributes) {
        try {
            int resultado = documentoVentaService.anularDocumentoVenta(id);
            if (resultado > 0) {
                redirectAttributes.addFlashAttribute("success", "Documento anulado exitosamente");
            } else {
                redirectAttributes.addFlashAttribute("warning", "No se pudo anular el documento (funcionalidad no implementada)");
            }
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", e.getMessage());
        }
        return "redirect:/documentos-venta/";
    }
}

package com.example.demo.DocuemtoVenta;

import com.example.demo.DocuemtoVenta.models.DetalleDocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DetalleForm;
import com.example.demo.DocuemtoVenta.models.DocumentoVenta;
import com.example.demo.DocuemtoVenta.models.DocumentoVentaForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/venta")
public class DocumentoVentaController {

    private final DocumentoVentaService documentoVentaService;

    @Autowired
    public DocumentoVentaController(DocumentoVentaService documentoVentaService) {
        this.documentoVentaService = documentoVentaService;
    }

    @RequestMapping("/compra")
    public String documentoVenta(Model model){
        String serie = "F001";
        String numero = documentoVentaService.getSiguienteNroDocumento(serie);
        model.addAttribute("serie", serie);
        model.addAttribute("numero", numero);
        return "documento_de_venta/documento_venta";
    }

    @RequestMapping("/gestion_ventas")
    public String listadoVentas(){
        return "documento_de_venta/gestion_documento";
    }

    @PostMapping("/guardar-documento")
    public String guardarDocumento(@ModelAttribute DocumentoVentaForm form, RedirectAttributes redirectAttributes) {
        try {
            // Validar
            if (form.getRazonSocial() == null || form.getRazonSocial().trim().isEmpty()) {
                redirectAttributes.addFlashAttribute("error", "La razón social es obligatoria");
                return "redirect:/venta/compra";
            }
            if (form.getDetalles() == null || form.getDetalles().isEmpty()) {
                redirectAttributes.addFlashAttribute("error", "No hay productos en el carrito");
                return "redirect:/venta/compra";
            }

            // Calcular total
            BigDecimal total = BigDecimal.ZERO;
            List<DetalleDocumentoVenta> detalleList = new ArrayList<>();
            for (DetalleForm det : form.getDetalles()) {
                BigDecimal precioUnitario = det.getPrecio();
                BigDecimal subtotal = precioUnitario.multiply(BigDecimal.valueOf(det.getCantidad()));
                total = total.add(subtotal);

                DetalleDocumentoVenta detalle = new DetalleDocumentoVenta();
                detalle.setIdProducto(det.getIdProducto());
                detalle.setCantidad(det.getCantidad());
                detalle.setPrecioUnitario(precioUnitario);
                detalle.setSubtotal(subtotal);
                detalleList.add(detalle);
            }

            // Crear documento
            DocumentoVenta documento = new DocumentoVenta();
            documento.setRazonSocial(form.getRazonSocial());
            documento.setNroSerie("F001");
            documento.setNroDocumento(documentoVentaService.getSiguienteNroDocumento("F001"));
            documento.setDireccionEntrega(form.getDireccionEntrega());
            documento.setReferencia(form.getReferencia());
            documento.setTotal(total);
            documento.setFechaCreacion(new java.sql.Timestamp(System.currentTimeMillis()));
            documento.setFechaVencimiento(Date.valueOf(LocalDate.now().plusDays(30)));
            documento.setFechaEntrega(Date.valueOf(LocalDate.now().plusDays(7)));
            documento.setIdUser(1);

            int idDocumento = documentoVentaService.crearDocumentoVenta(documento, detalleList);

            redirectAttributes.addFlashAttribute("success", "Documento creado exitosamente. ID: " + idDocumento);
            return "redirect:/venta/compra";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error al guardar el documento: " + e.getMessage());
            return "redirect:/venta/compra";
        }
    }

    @GetMapping("/listar-documentos")
    @ResponseBody
    public List<DocumentoVenta> listarDocumentos(@RequestParam Date fechaInicio, @RequestParam Date fechaFin) {
        return documentoVentaService.listarDocumentosEntreFechas(fechaInicio, fechaFin);
    }
}

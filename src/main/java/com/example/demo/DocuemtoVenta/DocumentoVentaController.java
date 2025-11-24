package com.example.demo.DocuemtoVenta;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
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

    @GetMapping("/siguiente-numero")
    @ResponseBody
    public Map<String, String> getSiguienteNumeroDocumento() {
        String serie = "F001";
        String numero = documentoVentaService.getSiguienteNroDocumento(serie);
        Map<String, String> response = new HashMap<>();
        response.put("serie", serie);
        response.put("numero", numero);
        return response;
    }
}

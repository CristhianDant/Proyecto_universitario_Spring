package com.example.demo.DocuemtoVenta;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/venta")
public class VentaController {

    @RequestMapping("/compra")
    public String documentoVenta(){
        return "documento_de_venta/documento_venta";
    }

    @RequestMapping("/gestion_ventas")
    public String listadoVentas(){
        return "documento_de_venta/gestion_documento";
    }
}

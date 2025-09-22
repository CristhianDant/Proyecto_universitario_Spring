package com.example.demo.Producto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/productos")
public class ProductoController {

    private final ProductoService productoService;

    public ProductoController(ProductoService productoService) {
        this.productoService = productoService;
    }

    @GetMapping("/")
    public String listar_productos(Model model) {
        // Obtener la lista de productos desde el servicio
        model.addAttribute("productos", productoService.Productos_listado());
        model.addAttribute("mensaje", "Lista de productos");
        return "productos";
    }
}
package com.example.demo;

import com.example.demo.Marca.Marca;
import com.example.demo.Marca.MarcaService;
import com.example.demo.Producto_2.ProductoService;
import com.example.demo.Producto_2.Producto_Marca;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class RoutingController {

    private final MarcaService marcaService;
    private final ProductoService productoService;

    public RoutingController(MarcaService marcaService, ProductoService productoService) {
        this.marcaService = marcaService;
        this.productoService = productoService;
    }

    @GetMapping("/")
    public String index(Model model) {
        List<Marca> marcasActivas = marcaService.listarMarcasActivas();
        List<Producto_Marca> productosActivos = productoService.listarProductosActivos();
        model.addAttribute("marcasActivas", marcasActivas);
        model.addAttribute("productosActivos", productosActivos);
        model.addAttribute("message", "Welcome to the Home Page!");
        return "index";
    }


    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }
}
package com.example.demo.Producto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/productos")
public class ProductoController {

    private final ProductoService productoService;

    public ProductoController(ProductoService productoService) {
        this.productoService = productoService;
    }

    @GetMapping("/")
    public String listar_productos(@RequestParam(name = "marca", required = false) String marca, Model model) {
        List<Producto> productos;
        if (marca != null && !marca.isEmpty() && !marca.equals("TODAS")) {
            productos = productoService.getProductosPorMarca(marca);
        } else {
            productos = productoService.Productos_listado();
        }

        model.addAttribute("productos", productos);
        model.addAttribute("marcas", productoService.getMarcasUnicas());
        model.addAttribute("marcaSeleccionada", marca);
        model.addAttribute("mensaje", "Lista de productos");
        return "productos";
    }
}
package com.example.demo;

import com.example.demo.Marca.Marca;
import com.example.demo.Marca.MarcaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class RoutingController {

    private final MarcaService marcaService;

    public RoutingController(MarcaService marcaService) {
        this.marcaService = marcaService;
    }

    @GetMapping("/")
    public String index(Model model) {
        List<Marca> marcasActivas = marcaService.listarMarcasActivas();
        model.addAttribute("marcasActivas", marcasActivas);
        model.addAttribute("message", "Welcome to the Home Page!");
        return "index";
    }


    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }
}
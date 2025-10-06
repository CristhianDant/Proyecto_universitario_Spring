package com.example.demo.Marca;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/marcas")
public class MarcaController {

    @RequestMapping("/")
    public String listar_marcas() {
        return "marca";
    }
}


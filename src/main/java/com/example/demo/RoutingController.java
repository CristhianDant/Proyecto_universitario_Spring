package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoutingController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("message", "Welcome to the Home Page!");
        return "index";
    }


    @GetMapping("/productos_html")
    public String productosHtml(Model model) {
        model.addAttribute("message", "Welcome to the Productos Page!");
        return "productos";
    }
}
package com.example.demo.tipoProducto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/tipoproducto")
public class TipoProductoController {

    private final TipoProductoService tipoProductoService;

    public TipoProductoController(TipoProductoService tipoProductoService) {
        this.tipoProductoService = tipoProductoService;
    }

    @RequestMapping("/list")
    public String listaTipoProducto(Model model) {
        model.addAttribute("tipoproductos", tipoProductoService.listaTipoProducto());      
        return "tipoproducto/lista"; // Retorna la vista correspondiente
    }

    
    @PostMapping("/get")
    public String obtenerTipoProducto(@RequestParam("id") int id,  Model model) {
        TipoProducto tipoProducto = tipoProductoService.obtenerTipoProductoPorId(id);
        model.addAttribute("tipoProducto", tipoProducto );
        System.out.println("tipoProducto" + tipoProducto.getNombre() );      
        return "tipoproducto/obtener"; // Retorna la vista correspondiente

    }

    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model) {
        // Se agrega un objeto vacío al modelo para que el formulario pueda vincularse
        model.addAttribute("tipoProducto", new TipoProducto());
        return "tipoproducto/crear";
    }

    @PostMapping("/crear")
    public String crearTipoProducto(@ModelAttribute("tipoProducto") TipoProducto tipoProducto) {
        tipoProductoService.crearTipoProducto(tipoProducto);
        return "redirect:/tipoProducto/list";
    }

    @GetMapping("/registro")
    public String mostrarFormulario(Model model) {
        model.addAttribute("tipoProducto", new TipoProducto());
        return "/tipoproducto/registro";
    }

    @PostMapping("/registrar")
    public String registrarUsuario(@ModelAttribute("tipoProducto") TipoProducto tipoProducto, Model model) {
        tipoProductoService.crearTipoProducto(tipoProducto);
        return "redirect:/tipoProducto/list";
    }

}
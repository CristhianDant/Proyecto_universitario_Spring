package com.example.demo.Marca;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/marcas")
public class MarcaController {

    private final MarcaService marcaService;

    public MarcaController(MarcaService marcaService) {
        this.marcaService = marcaService;
    }

    // Endpoint principal - GET /marcas/ - Lista todas las marcas
    @GetMapping("/")
    public String listarMarcas(Model model) {
        List<Marca> marcas = marcaService.listarMarcas();
        model.addAttribute("marcas", marcas);
        model.addAttribute("mensaje", "Lista de marcas");
        return "marca/listar_marca";
    }

    // Endpoint POST - /marcas/guardar - Guarda una nueva marca y redirige a listar
    @PostMapping("/guardar")
    public String guardarMarca(@RequestParam String nombreMarca,
                              @RequestParam String procedencia,
                              Model model) {

        // Verificar si ya existe una marca con ese nombre
        if (marcaService.existeMarcaPorNombre(nombreMarca)) {
            List<Marca> marcas = marcaService.listarMarcas();
            model.addAttribute("marcas", marcas);
            model.addAttribute("mensaje", "Error: Ya existe una marca con ese nombre");
            return "marca/listar_marca";
        }

        // Crear nueva marca
        Marca nuevaMarca = new Marca();
        nuevaMarca.setNombreMarca(nombreMarca);
        nuevaMarca.setProcedencia(procedencia);

        int resultado = marcaService.crearMarca(nuevaMarca);

        if (resultado > 0) {
            return "redirect:/marcas/";
        } else {
            List<Marca> marcas = marcaService.listarMarcas();
            model.addAttribute("marcas", marcas);
            model.addAttribute("mensaje", "Error al crear la marca");
            return "marca/listar_marca";
        }
    }

    // Endpoint GET - /marcas/editar/{id} - Busca una marca y la envía a una_marca.jsp
    @GetMapping("/editar/{id}")
    public String editarMarca(@PathVariable int id, Model model) {
        Marca marca = marcaService.buscarMarcaPorId(id);

        if (marca != null) {
            model.addAttribute("marca", marca);
            return "marca/una_marca";
        } else {
            return "redirect:/marcas/";
        }
    }

    // Endpoint POST - /marcas/actualizar - Actualiza una marca y redirige a una_marca.jsp
    @PostMapping("/actualizar")
    public String actualizarMarca(@RequestParam int idMarca,
                                 @RequestParam String nombreMarca,
                                 @RequestParam String procedencia,
                                 Model model) {

        // Crear objeto marca con los datos actualizados
        Marca marca = new Marca();
        marca.setIdMarca(idMarca);
        marca.setNombreMarca(nombreMarca);
        marca.setProcedencia(procedencia);

        int resultado = marcaService.actualizarMarca(marca);

        if (resultado > 0) {
            // Actualización exitosa - recargar la marca actualizada
            Marca marcaActualizada = marcaService.buscarMarcaPorId(idMarca);
            model.addAttribute("marca", marcaActualizada);
            model.addAttribute("mensaje", "Marca actualizada correctamente");
            return "marca/lista_marca";
        } else {
            // Error en la actualización
            model.addAttribute("marca", marca);
            model.addAttribute("mensaje", "Error al actualizar la marca");
            return "marca/lista_marca";
        }
    }
}

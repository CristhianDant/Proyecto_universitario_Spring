package com.example.demo.Marca;

import com.example.demo.Utilis.save_imagenes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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

    // Endpoint GET - /marcas/crear - Muestra el formulario para crear marca
    @GetMapping("/crear")
    public String mostrarCrearMarca(Model model) {
        return "marca/crear_marca";
    }

    // Endpoint POST - /marcas/guardar - Guarda una nueva marca y redirige a listar
    @PostMapping("/guardar")
    public String guardarMarca(@RequestParam String nombreMarca,
                              @RequestParam String procedencia,
                              @RequestParam String descripcion,
                              @RequestParam("linkImageu") MultipartFile file,
                              Model model) {

        String linkImagenGuardada = save_imagenes.guardarImagen(file);
        if (linkImagenGuardada == null) {
            model.addAttribute("mensaje", "Error al guardar la imagen.");
            return "marca/crear_marca";
        }

        // Crear nueva marca
        Marca nuevaMarca = new Marca();
        nuevaMarca.setNombreMarca(nombreMarca);
        nuevaMarca.setProcedencia(procedencia);
        nuevaMarca.setDescripcion(descripcion);
        nuevaMarca.setLink_imaguen(linkImagenGuardada);
        nuevaMarca.setAnulado(false);

        try {
            int resultado = marcaService.crearMarca(nuevaMarca);
            if (resultado > 0) {
                return "redirect:/marcas/";
            } else {
                model.addAttribute("mensaje", "Error al crear la marca");
                return "marca/crear_marca";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", e.getMessage());
            return "marca/crear_marca";
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

    // Endpoint POST - /marcas/actualizar - Actualiza una marca y redirige a listar_marca.jsp
    @PostMapping("/actualizar")
    public String actualizarMarca(@RequestParam int idMarca,
                                 @RequestParam String nombreMarca,
                                 @RequestParam String procedencia,
                                 @RequestParam String descripcion,
                                 @RequestParam("linkImageu") MultipartFile file,
                                 @RequestParam(required = false) boolean anulado,
                                 Model model) {

        String linkImagenGuardada = save_imagenes.guardarImagen(file);
        if (linkImagenGuardada == null) {
            // Si no se sube una nueva imagen, mantenemos la anterior.
            Marca marcaExistente = marcaService.buscarMarcaPorId(idMarca);
            linkImagenGuardada = marcaExistente.getLink_imaguen();
        }

        // Crear objeto marca con los datos actualizados
        Marca marca = new Marca();
        marca.setIdMarca(idMarca);
        marca.setNombreMarca(nombreMarca);
        marca.setProcedencia(procedencia);
        marca.setDescripcion(descripcion);
        marca.setLink_imaguen(linkImagenGuardada);
        marca.setAnulado(anulado);

        try {
            int resultado = marcaService.actualizarMarca(marca);
            if (resultado > 0) {
                // Actualización exitosa - redirigir al listado
                return "redirect:/marcas/";
            } else {
                // Error en la actualización - mostrar error en el listado
                model.addAttribute("mensaje", "Error al actualizar la marca");
                model.addAttribute("marca", marca);
                return "marca/una_marca";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", e.getMessage());
            model.addAttribute("marca", marca);
            return "marca/una_marca";
        }
    }

    // Endpoint GET - /marcas/marcas_activas - Lista todas las marcas activas en formato JSON
    @GetMapping("/marcar_activas")
    @ResponseBody
    public List<Marca> listarMarcasActivas() {
        return marcaService.listarMarcasActivas();
    }

    // Endpoint GET - /marcas/api/lista_marcas - Lista todas las marcas activas en formato API
    @GetMapping("/api/lista_marcas")
    @ResponseBody
    public List<Marca> apiListaMarcas() {
        return marcaService.listarMarcasActivas();
    }
}

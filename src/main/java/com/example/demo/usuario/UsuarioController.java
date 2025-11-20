package com.example.demo.usuario;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    private final UsuarioService usuarioService;

    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    // Mostrar formulario de registro de usuario
    @GetMapping("/crear")
    public String mostrarFormularioCrear(Model model) {
        return "usuario/crear_usuario";
    }

    @PostMapping("/crear")
    public String crearUsuario(@RequestParam String username,
                               @RequestParam String password,
                               @RequestParam(required = false) String email,
                               @RequestParam(required = false) String ruc_dni_cliente,
                               @RequestParam(required = false) String telefono,
                               @RequestParam(required = false) String direccion_fiscal,
                               Model model) {

        try {
            // Crear nuevo usuario
            Usuario nuevoUsuario = new Usuario();
            nuevoUsuario.setUsername(username);
            nuevoUsuario.setPassword(password);
            nuevoUsuario.setEmail(email);
            nuevoUsuario.setRuc_dni_cliente(ruc_dni_cliente);
            nuevoUsuario.setTelefono(telefono);
            nuevoUsuario.setSuperuser(false);
            nuevoUsuario.setDirecccion_fiscal(direccion_fiscal);

            int resultado = usuarioService.crearUsuario(nuevoUsuario);

            if (resultado > 0) {
                model.addAttribute("mensaje", "Usuario creado exitosamente");
                return "usuario/crear_usuario";
            } else {
                model.addAttribute("mensaje", "Error al crear el usuario");
                return "usuario/crear_usuario";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", "Error al crear el usuario: " + e.getMessage());
            return "usuario/crear_usuario";
        }
    }

}
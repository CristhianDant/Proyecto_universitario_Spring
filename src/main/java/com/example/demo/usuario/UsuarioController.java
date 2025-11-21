package com.example.demo.usuario;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    private final UsuarioService usuarioService;

    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    // Mostrar formulario de registro de usuario
    @GetMapping("/reguistar_usuario")
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
            nuevoUsuario.setAnulado(false);

            int resultado = usuarioService.crearUsuario(nuevoUsuario);

            if (resultado > 0) {
                return "redirect:/login/";
            } else {
                model.addAttribute("mensaje", "Error al crear el usuario");
                return "usuario/crear_usuario";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", "Error al crear el usuario: " + e.getMessage());
            return "usuario/crear_usuario";
        }
    }

    // Listar usuarios
    @GetMapping("/gestion")
    public String listarUsuarios(Model model) {
        try {
            List<Usuario> usuarios = usuarioService.listarUsuarios();
            model.addAttribute("usuarios", usuarios);
            return "usuario/usuarios";
        } catch (Exception e) {
            model.addAttribute("mensaje", "Error al listar usuarios: " + e.getMessage());
            return "usuario/usuarios";
        }
    }

    // Editar usuario
    @GetMapping("/editar/{id}")
    public String editarUsuario(@PathVariable int id, Model model) {
        try {
            Usuario usuario = usuarioService.buscarUsuarioPorId(id);
            if (usuario != null) {
                model.addAttribute("usuario", usuario);
                return "usuario/editar_usuario";
            } else {
                model.addAttribute("mensaje", "Usuario no encontrado");
                return "redirect:/usuario/gestion";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", "Error al buscar el usuario: " + e.getMessage());
            return "redirect:/usuario/gestion";
        }
    }

    // Actualizar usuario
    @PostMapping("/actualizar")
    public String actualizarUsuario(@RequestParam int id_user,
                                    @RequestParam String username,
                                    @RequestParam String password,
                                    @RequestParam(required = false) String email,
                                    @RequestParam(required = false) String ruc_dni_cliente,
                                    @RequestParam(required = false) String telefono,
                                    @RequestParam(required = false) String direccion_fiscal,
                                    @RequestParam boolean superuser,
                                    @RequestParam boolean anulado,
                                    Model model) {
        try {
            Usuario usuario = new Usuario();
            usuario.setId_user(id_user);
            usuario.setUsername(username);
            usuario.setPassword(password);
            usuario.setEmail(email);
            usuario.setRuc_dni_cliente(ruc_dni_cliente);
            usuario.setTelefono(telefono);
            usuario.setDirecccion_fiscal(direccion_fiscal);
            usuario.setSuperuser(superuser);
            usuario.setAnulado(anulado);

            int resultado = usuarioService.actualizarUsuario(usuario);

            if (resultado > 0) {
                return "redirect:/usuario/gestion";
            } else {
                model.addAttribute("mensaje", "Error al actualizar el usuario");
                model.addAttribute("usuario", usuario);
                return "usuario/editar_usuario";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", "Error al actualizar el usuario: " + e.getMessage());
            Usuario usuario = usuarioService.buscarUsuarioPorId(id_user);
            model.addAttribute("usuario", usuario);
            return "usuario/editar_usuario";
        }
    }

}
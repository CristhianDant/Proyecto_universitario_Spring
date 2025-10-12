package com.example.demo.usuario;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    @RequestMapping("/reguistar_usuario")
    public String registrar_usuario(){
        return "usuario/crear_usuario";
    }

}

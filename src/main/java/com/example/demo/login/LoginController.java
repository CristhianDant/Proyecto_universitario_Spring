package com.example.demo.login;

import com.example.demo.usuario.Usuario;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/login")
public class LoginController {

    private final LoginService loginService;

    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    // Endpoint que retorna el JSP de login
    @GetMapping("/")
    public String login() {
        return "login";
    }

    @PostMapping("/api/auth")
    @ResponseBody
    public ResponseEntity<?> authenticate(@RequestParam String email, @RequestParam String password) {
        try {
            Usuario usuario = loginService.authenticate(email, password);
            if (usuario != null) {
                return ResponseEntity.ok(usuario);
            } else {
                return ResponseEntity.badRequest().body(Map.of("error", "Email o contraseña incorrectos"));
            }
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(Map.of("error", "Error al iniciar sesión: " + e.getMessage()));
        }
    }

}

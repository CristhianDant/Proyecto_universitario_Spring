package com.example.demo.login;

import com.example.demo.usuario.Usuario;
import com.example.demo.usuario.UsuarioService;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImp implements LoginService {

    private final UsuarioService usuarioService;

    public LoginServiceImp(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @Override
    public Usuario authenticate(String email, String password) {
        Usuario usuario = usuarioService.buscarUsuarioPorEmail(email);
        if (usuario != null && !usuario.getAnulado() && password.equals(usuario.getPassword())) {
            return usuario;
        }
        return null;
    }
}

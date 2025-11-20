package com.example.demo.usuario;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UsuarioServiceImp implements UsuarioService {

    private final UsuarioDAO usuarioDAO;

    public UsuarioServiceImp(UsuarioDAO usuarioDAO) {
        this.usuarioDAO = usuarioDAO;
    }

    @Override
    public List<Usuario> listarUsuarios() {
        return usuarioDAO.listarUsuarios();
    }

    @Override
    public Usuario buscarUsuarioPorId(int idUsuario) {
        return usuarioDAO.buscarUsuarioPorId(idUsuario);
    }

    @Override
    public Usuario buscarUsuarioPorEmail(String email) {
        return usuarioDAO.buscarUsuarioPorEmail(email);
    }

    @Override
    public int crearUsuario(Usuario usuario) {
        return usuarioDAO.crearUsuario(usuario);
    }

    @Override
    public int actualizarUsuario(Usuario usuario) {
        return usuarioDAO.actualizarUsuario(usuario);
    }
}


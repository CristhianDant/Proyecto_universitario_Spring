package com.example.demo.usuario;

import java.util.List;

public interface UsuarioDAO {
    List<Usuario> listarUsuarios();
    Usuario buscarUsuarioPorId(int idUsuario);
    Usuario buscarUsuarioPorEmail(String email);
    Usuario buscarUsuarioPorUsername(String username);
    int crearUsuario(Usuario usuario);
    int actualizarUsuario(Usuario usuario);
}

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
    public Usuario buscarUsuarioPorUsername(String username) {
        return usuarioDAO.buscarUsuarioPorUsername(username);
    }

    @Override
    public int crearUsuario(Usuario usuario) {
        // Verificar que el RUC o DNI tenga entre 7 y 11 dígitos
        String rucDni = usuario.getRuc_dni_cliente();
        if (rucDni != null && !rucDni.matches("\\d{7,11}")) {
            throw new IllegalArgumentException("El RUC o DNI debe tener entre 7 y 11 dígitos numéricos.");
        }

        // Verificar que el teléfono tenga exactamente 9 dígitos
        String telefono = usuario.getTelefono();
        if (telefono != null && !telefono.matches("\\d{9}")) {
            throw new IllegalArgumentException("El teléfono debe tener exactamente 9 dígitos.");
        }

        // Verificar que el email no se repita
        if (usuario.getEmail() != null && !usuario.getEmail().isEmpty()) {
            Usuario existenteEmail = usuarioDAO.buscarUsuarioPorEmail(usuario.getEmail());
            if (existenteEmail != null) {
                throw new IllegalArgumentException("El email ya está registrado.");
            }
        }

        // Verificar que el username no se repita
        if (usuario.getUsername() != null && !usuario.getUsername().isEmpty()) {
            Usuario existenteUsername = usuarioDAO.buscarUsuarioPorUsername(usuario.getUsername());
            if (existenteUsername != null) {
                throw new IllegalArgumentException("El nombre de usuario ya está registrado.");
            }
        }

        // Si todas las validaciones pasan, crear el usuario
        return usuarioDAO.crearUsuario(usuario);
    }

    @Override
    public int actualizarUsuario(Usuario usuario) {
        return usuarioDAO.actualizarUsuario(usuario);
    }
}

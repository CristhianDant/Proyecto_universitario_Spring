package com.example.demo.usuario;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class UsuarioRepository implements UsuarioDAO {

    private final JdbcTemplate jdbcTemplate;

    public UsuarioRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Usuario> usuarioRowMapper = (rs, rowNum) -> {
        return new Usuario(
                rs.getObject("id_user", Integer.class),
                rs.getString("username"),
                rs.getString("password"),
                rs.getObject("superuser", Boolean.class),
                rs.getString("email"),
                rs.getString("ruc_dni_cliente"),
                rs.getString("telefono"),
                rs.getString("direccion_fiscal"),
                rs.getObject("anulado", Boolean.class)
        );
    };

    @Override
    public List<Usuario> listarUsuarios() {
        String query = """
            SELECT
                id_user,
                username,
                password,
                superuser,
                email,
                ruc_dni_cliente,
                telefono,
                direccion_fiscal,
                anulado
            FROM users
            ORDER BY id_user
            """;
        return jdbcTemplate.query(query, usuarioRowMapper);
    }

    @Override
    public Usuario buscarUsuarioPorId(int idUsuario) {
        String query = """
            SELECT
                id_user,
                username,
                password,
                superuser,
                email,
                ruc_dni_cliente,
                telefono,
                direccion_fiscal,
                anulado
            FROM users
            WHERE id_user = ?
            """;
        List<Usuario> usuarios = jdbcTemplate.query(query, usuarioRowMapper, idUsuario);
        return usuarios.isEmpty() ? null : usuarios.get(0);
    }

    @Override
    public Usuario buscarUsuarioPorUsername(String username) {
        String query = """
            SELECT
                id_user,
                username,
                password,
                superuser,
                email,
                ruc_dni_cliente,
                telefono,
                direccion_fiscal,
                anulado
            FROM users
            WHERE username = ?
            """;
        List<Usuario> usuarios = jdbcTemplate.query(query, usuarioRowMapper, username);
        return usuarios.isEmpty() ? null : usuarios.get(0);
    }

    @Override
    public Usuario buscarUsuarioPorEmail(String email) {
        String query = """
            SELECT
                id_user,
                username,
                password,
                superuser,
                email,
                ruc_dni_cliente,
                telefono,
                direccion_fiscal,
                anulado
            FROM users
            WHERE email = ?
            """;
        List<Usuario> usuarios = jdbcTemplate.query(query, usuarioRowMapper, email);
        return usuarios.isEmpty() ? null : usuarios.get(0);
    }

    @Override
    public int crearUsuario(Usuario usuario) {
        String query = """
            INSERT INTO users (username, password, superuser, email, ruc_dni_cliente, telefono, direccion_fiscal , anulado)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            """;
        return jdbcTemplate.update(query,
                usuario.getUsername(),
                usuario.getPassword(),
                usuario.getSuperuser(),
                usuario.getEmail(),
                usuario.getRuc_dni_cliente(),
                usuario.getTelefono(),
                usuario.getDirecccion_fiscal(),
                usuario.getAnulado());
    }

    @Override
    public int actualizarUsuario(Usuario usuario) {
        String query = """
            UPDATE users
            SET username = ?, password = ?, superuser = ?, email = ?, ruc_dni_cliente = ?, telefono = ?, direccion_fiscal = ? , anulado = ?
            WHERE id_user = ?
            """;
        return jdbcTemplate.update(query,
                usuario.getUsername(),
                usuario.getPassword(),
                usuario.getSuperuser(),
                usuario.getEmail(),
                usuario.getRuc_dni_cliente(),
                usuario.getTelefono(),
                usuario.getDirecccion_fiscal(),
                usuario.getAnulado(),
                usuario.getId_user());
    }
}

package com.example.demo.Marca;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class MarcaRepository implements MarcaDAO {

    private final JdbcTemplate jdbcTemplate;

    public MarcaRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Marca> MarcaRowMapper = (rs, rowNum) -> {
        return new Marca(
                rs.getInt("id_marca"),
                rs.getString("nombre_marca"),
                rs.getString("procedencia")
        );
    };

    @Override
    public List<Marca> listarMarcas() {
        String query = """
            SELECT
                id_marca,
                nombre_marca,
                procedencia
            FROM marcas
            ORDER BY nombre_marca
            """;
        return jdbcTemplate.query(query, MarcaRowMapper);
    }

    @Override
    public Marca buscarMarcaPorId(int idMarca) {
        String query = """
            SELECT
                id_marca,
                nombre_marca,
                procedencia
            FROM marcas
            WHERE id_marca = ?
            """;
        List<Marca> marcas = jdbcTemplate.query(query, MarcaRowMapper, idMarca);
        return marcas.isEmpty() ? null : marcas.get(0);
    }

    @Override
    public int crearMarca(Marca marca) {
        String query = """
            INSERT INTO marcas (nombre_marca, procedencia)
            VALUES (?, ?)
            """;
        return jdbcTemplate.update(query,
                marca.getNombreMarca(),
                marca.getProcedencia());
    }

    @Override
    public int actualizarMarca(Marca marca) {
        String query = """
            UPDATE marcas 
            SET nombre_marca = ?, procedencia = ?
            WHERE id_marca = ?
            """;
        return jdbcTemplate.update(query,
                marca.getNombreMarca(),
                marca.getProcedencia(),
                marca.getIdMarca());
    }



    @Override
    public boolean existeMarcaPorNombre(String nombreMarca) {
        String query = "SELECT COUNT(*) FROM marcas WHERE nombre_marca = ?";
        Integer count = jdbcTemplate.queryForObject(query, Integer.class, nombreMarca);
        return count != null && count > 0;
    }
}

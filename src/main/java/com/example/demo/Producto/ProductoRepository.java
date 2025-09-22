package com.example.demo.Producto;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ProductoRepository implements ProductoDAO {

    private final JdbcTemplate jdbcTemplate;

    public ProductoRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Producto> ProductoRowMapper = (rs, rowNum) -> {
        return new Producto(
                rs.getInt("id_producto"),
                rs.getString("cod_producto"),
                rs.getString("descripcion"),
                rs.getInt("um"),
                rs.getDate("vencimiento") != null ? rs.getDate("vencimiento").toLocalDate() : null,
                rs.getBigDecimal("cantidad"),
                rs.getInt("almacen"),
                rs.getString("marca"),
                rs.getInt("procedencia")
        );
    };

    @Override
    public List<Producto> Productos_listado() {
        String query = """
            SELECT 
                id_producto, 
                cod_producto, 
                descripcion, 
                um,
                vencimiento, 
                cantidad, 
                almacen, 
                marca, 
                procedencia
            FROM productos
            ORDER BY id_producto
            """;
        return jdbcTemplate.query(query, ProductoRowMapper);
    }
}
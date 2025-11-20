package com.example.demo.Producto_2;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class ProductoRepository implements ProductoDAO {

    private final JdbcTemplate jdbcTemplate;

    public ProductoRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Producto> productoRowMapper = (rs, rowNum) -> {
        return new Producto(
                rs.getInt("id_producto"),
                rs.getString("nombre_producto"),
                rs.getString("descripcion"),
                rs.getDouble("precio"),
                rs.getInt("id_marca"),
                rs.getString("link_imaguen")
        );
    };

    @Override
    public List<Producto> listarProductos() {
        String query = """
            SELECT
                id_producto,
                nombre_producto,
                descripcion,
                precio,
                id_marca,
                link_imaguen
            FROM productos
            ORDER BY id_producto
            """;
        return jdbcTemplate.query(query, productoRowMapper);
    }

    @Override
    public Producto buscarProductoPorId(int idProducto) {
        String query = """
            SELECT
                id_producto,
                nombre_producto,
                descripcion,
                precio,
                id_marca,
                link_imaguen
            FROM productos
            WHERE id_producto = ?
            """;
        List<Producto> productos = jdbcTemplate.query(query, productoRowMapper, idProducto);
        return productos.isEmpty() ? null : productos.get(0);
    }

    @Override
    public int crearProducto(Producto producto) {
        String query = """
            INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen)
            VALUES (?, ?, ?, ?, ?)
            """;
        return jdbcTemplate.update(query,
                producto.getNombre_producto(),
                producto.getDescripcion(),
                producto.getPrecio(),
                producto.getId_marca(),
                producto.getLink_imaguen());
    }

    @Override
    public int actualizarProducto(Producto producto) {
        String query = """
            UPDATE productos
            SET nombre_producto = ?, descripcion = ?, precio = ?, id_marca = ?, link_imaguen = ?
            WHERE id_producto = ?
            """;
        return jdbcTemplate.update(query,
                producto.getNombre_producto(),
                producto.getDescripcion(),
                producto.getPrecio(),
                producto.getId_marca(),
                producto.getLink_imaguen(),
                producto.getId_producto());
    }
}


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

    // Mapeo de filas a objetos Producto_Marca
    private final RowMapper<Producto_Marca> productoMarcaRowMapper = (rs, rowNum) -> new Producto_Marca(
            rs.getInt("id_producto"),
            rs.getString("nombre_producto"),
            rs.getString("descripcion"),
            rs.getDouble("precio"),
            rs.getInt("id_marca"),
            rs.getString("link_imaguen"),
            rs.getString("nombre_marca"),
            rs.getBoolean("anulado")
    );

    @Override
    public List<Producto_Marca> listarProductos() {
        String query = """
            SELECT
                p.id_producto,
                p.nombre_producto,
                p.descripcion,
                p.precio,
                p.id_marca,
                p.link_imaguen,
                p.anulado,
                m.nombre_marca
            FROM productos p
            INNER JOIN marcas m ON p.id_marca = m.id_marca
            ORDER BY p.id_producto;
            """;
        return jdbcTemplate.query(query, productoMarcaRowMapper);
    }

    @Override
    public Producto_Marca buscarProductoPorId(int idProducto) {
        String query = """
            SELECT
                p.id_producto,
                p.nombre_producto,
                p.descripcion,
                p.precio,
                p.id_marca,
                p.link_imaguen,
                p.anulado,
                m.nombre_marca
            FROM productos p
            INNER JOIN marcas m ON p.id_marca = m.id_marca
            WHERE p.id_producto = ?;
            """;
        List<Producto_Marca> productos = jdbcTemplate.query(query, productoMarcaRowMapper, idProducto);
        return productos.isEmpty() ? null : productos.get(0);
    }

    @Override
    public int crearProducto(Producto producto) {
        String query = """
            INSERT INTO productos (nombre_producto, descripcion, precio, id_marca, link_imaguen, anulado)
            VALUES (?, ?, ?, ?, ?, ?)
            """;
        return jdbcTemplate.update(query,
                producto.getNombre_producto(),
                producto.getDescripcion(),
                producto.getPrecio(),
                producto.getId_marca(),
                producto.getLink_imaguen(),
                producto.isAnulado());
    }

    @Override
    public int actualizarProducto(Producto producto) {
        String query = """
            UPDATE productos
            SET nombre_producto = ?, descripcion = ?, precio = ?, id_marca = ?, link_imaguen = ?, anulado = ?
            WHERE id_producto = ?
            """;
        return jdbcTemplate.update(query,
                producto.getNombre_producto(),
                producto.getDescripcion(),
                producto.getPrecio(),
                producto.getId_marca(),
                producto.getLink_imaguen(),
                producto.isAnulado(),
                producto.getId_producto());
    }
}

package com.example.demo.Producto_2;

import java.util.List;

public interface ProductoDAO {
    List<Producto_Marca> listarProductos();
    List<Producto_Marca> listarProductosActivos();
    List<Producto_Marca> buscarProductosPorMarca(int idMarca);
    int crearProducto(Producto producto);
    Producto_Marca buscarProductoPorId(int idProducto);
    int actualizarProducto(Producto producto);
}

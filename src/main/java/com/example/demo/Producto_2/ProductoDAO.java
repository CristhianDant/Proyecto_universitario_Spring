package com.example.demo.Producto_2;

import java.util.List;

public interface ProductoDAO {
    List<Producto> listarProductos();
    int crearProducto(Producto producto);
    Producto buscarProductoPorId(int idProducto);
    int actualizarProducto(Producto producto);
}


package com.example.demo.Producto_2;

import java.util.List;

public interface ProductoService {
    List<Producto_Marca> listarProductos();
    int crearProducto(Producto producto);
    Producto_Marca buscarProductoPorId(int idProducto);
    int actualizarProducto(Producto producto);
}

package com.example.demo.Producto_2;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ProductoServiceImp implements ProductoService {

    private final ProductoDAO productoDAO;

    public ProductoServiceImp(ProductoDAO productoDAO) {
        this.productoDAO = productoDAO;
    }

    @Override
    public List<Producto_Marca> listarProductos() {
        return productoDAO.listarProductos();
    }

    @Override
    public int crearProducto(Producto producto) {
        return productoDAO.crearProducto(producto);
    }

    @Override
    public Producto_Marca buscarProductoPorId(int idProducto) {
        return productoDAO.buscarProductoPorId(idProducto);
    }

    @Override
    public int actualizarProducto(Producto producto) {
        return productoDAO.actualizarProducto(producto);
    }
}

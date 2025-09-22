package com.example.demo.Producto;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ProductoServiceImp implements ProductoService {

    private final ProductoDAO productoDAO;

    public ProductoServiceImp(ProductoDAO productoDAO) {
        this.productoDAO = productoDAO;
    }

    @Override
    public List<Producto> Productos_listado() {
        return productoDAO.Productos_listado();
    }

    @Override
    public List<String> getMarcasUnicas() {
        return productoDAO.getMarcasUnicas();
    }

    @Override
    public List<Producto> getProductosPorMarca(String marca) {
        return productoDAO.findByMarca(marca);
    }
}
package com.example.demo.Producto_2;

import com.example.demo.Marca.Marca;
import com.example.demo.Marca.MarcaService;
import com.example.demo.Utilis.StringUtils;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ProductoServiceImp implements ProductoService {

    private final ProductoDAO productoDAO;
    private final MarcaService marcaService;

    public ProductoServiceImp(ProductoDAO productoDAO, MarcaService marcaService) {
        this.productoDAO = productoDAO;
        this.marcaService = marcaService;
    }

    @Override
    public List<Producto_Marca> listarProductos() {
        return productoDAO.listarProductos();
    }

    @Override
    public List<Producto_Marca> listarProductosActivos() {
        return productoDAO.listarProductosActivos();
    }

    @Override
    public List<Producto_Marca> buscarProductosPorMarca(int idMarca) {
        return productoDAO.buscarProductosPorMarca(idMarca);
    }

    @Override
    public int crearProducto(Producto producto) {
        // Capitalizar nombre de producto
        producto.setNombre_producto(StringUtils.capitalize(producto.getNombre_producto()));

        // Validar marca
        Marca marca = marcaService.buscarMarcaPorId(producto.getId_marca());
        if (marca == null || marca.isAnulado()) {
            throw new IllegalArgumentException("Marca no existe o está anulada");
        }
        return productoDAO.crearProducto(producto);
    }

    @Override
    public Producto_Marca buscarProductoPorId(int idProducto) {
        return productoDAO.buscarProductoPorId(idProducto);
    }

    @Override
    public int actualizarProducto(Producto producto) {
        // Capitalizar nombre de producto
        producto.setNombre_producto(StringUtils.capitalize(producto.getNombre_producto()));

        // Validar nombre de producto
        String nombre = producto.getNombre_producto();
        if (nombre == null || nombre.isEmpty()) {
            throw new IllegalArgumentException("Nombre de producto no puede ser nulo o vacío");
        }

        // Validar marca
        Marca marca = marcaService.buscarMarcaPorId(producto.getId_marca());
        if (marca == null || marca.isAnulado()) {
            throw new IllegalArgumentException("Marca no existe o está anulada");
        }
        return productoDAO.actualizarProducto(producto);
    }
}

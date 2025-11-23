package com.example.demo.Producto_2;

import com.example.demo.Marca.MarcaService;
import com.example.demo.Utilis.save_imagenes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
@RequestMapping("/productos")
public class ProductoController {

    private final ProductoService productoService;
    private final MarcaService marcaService;


    public ProductoController(ProductoService productoService, MarcaService marcaService) {
        this.productoService = productoService;
        this.marcaService = marcaService;
    }

    // Endpoint principal - GET /productos/ - Lista todos los productos
    @GetMapping("/")
    public String listarProductos(Model model) {
        List<Producto_Marca> productos = productoService.listarProductos();
        model.addAttribute("productos", productos);
        model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
        model.addAttribute("mensaje", "Lista de productos");
        return "producto/productos";
    }

    // Endpoint GET - /productos/crear - Muestra el formulario para crear producto
    @GetMapping("/crear")
    public String mostrarCrearProducto(Model model) {
        model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
        return "producto/crear_producto";
    }

    // Endpoint POST - /productos/guardar - Guarda un nuevo producto y redirige a listar
    @PostMapping("/guardar")
    public String guardarProducto(@RequestParam String nombreProducto,
                                  @RequestParam String descripcion,
                                  @RequestParam double precio,
                                  @RequestParam int idMarca,
                                  @RequestParam("linkImageu") MultipartFile file,
                                  Model model) {

        String linkImagenGuardada = save_imagenes.guardarImagen(file);
        if (linkImagenGuardada == null) {
            model.addAttribute("mensaje", "Error al guardar la imagen.");
            model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
            return "producto/crear_producto";
        }

        // Crear nuevo producto
        Producto nuevoProducto = new Producto();
        nuevoProducto.setNombre_producto(nombreProducto);
        nuevoProducto.setDescripcion(descripcion);
        nuevoProducto.setPrecio(precio);
        nuevoProducto.setId_marca(idMarca);
        nuevoProducto.setLink_imaguen(linkImagenGuardada);
        nuevoProducto.setAnulado(false);

        try {
            int resultado = productoService.crearProducto(nuevoProducto);
            if (resultado > 0) {
                return "redirect:/productos/";
            } else {
                model.addAttribute("mensaje", "Error al crear el producto");
                model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
                return "producto/crear_producto";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", e.getMessage());
            model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
            return "producto/crear_producto";
        }
    }

    // Endpoint GET - /productos/editar/{id} - Busca un producto y lo envía a un_producto.jsp
    @GetMapping("/editar/{id}")
    public String editarProducto(@PathVariable int id, Model model) {
        Producto producto = productoService.buscarProductoPorId(id);

        if (producto != null) {
            model.addAttribute("producto", producto);
            model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
            return "producto/un_producto";
        } else {
            return "redirect:/productos/";
        }
    }

    // Endpoint POST - /productos/actualizar - Actualiza un producto y redirige a listar_producto.jsp
    @PostMapping("/actualizar")
    public String actualizarProducto(@RequestParam int idProducto,
                                    @RequestParam String nombreProducto,
                                    @RequestParam String descripcion,
                                    @RequestParam double precio,
                                    @RequestParam int idMarca,
                                    @RequestParam("linkImageu") MultipartFile file,
                                    @RequestParam(required = false) boolean anulado,
                                    Model model) {

        String linkImagenGuardada = save_imagenes.guardarImagen(file);
        if (linkImagenGuardada == null) {
            // Si no se sube una nueva imagen, mantenemos la anterior.
            Producto productoExistente = productoService.buscarProductoPorId(idProducto);
            linkImagenGuardada = productoExistente.getLink_imaguen();
        }


        // Crear objeto producto con los datos actualizados
        Producto producto = new Producto();
        producto.setId_producto(idProducto);
        producto.setNombre_producto(nombreProducto);
        producto.setDescripcion(descripcion);
        producto.setPrecio(precio);
        producto.setId_marca(idMarca);
        producto.setLink_imaguen(linkImagenGuardada);
        producto.setAnulado(anulado);

        try {
            int resultado = productoService.actualizarProducto(producto);
            if (resultado > 0) {
                // Actualización exitosa - redirigir al listado
                return "redirect:/productos/";
            } else {
                // Error en la actualización - mostrar error en el listado
                model.addAttribute("mensaje", "Error al actualizar el producto");
                model.addAttribute("producto", producto);
                model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
                return "producto/un_producto";
            }
        } catch (Exception e) {
            model.addAttribute("mensaje", e.getMessage());
            model.addAttribute("producto", producto);
            model.addAttribute("marcasActivas", marcaService.listarMarcasActivas());
            return "producto/un_producto";
        }
    }

    // Endpoint GET - /productos/api/activos - Lista todos los productos activos en formato API
    @GetMapping("/api/activos")
    @ResponseBody
    public List<Producto_Marca> apiProductosActivos() {
        return productoService.listarProductosActivos();
    }
}

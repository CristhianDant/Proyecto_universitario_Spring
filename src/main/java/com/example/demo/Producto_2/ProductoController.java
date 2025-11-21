package com.example.demo.Producto_2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping("/productos")
public class ProductoController {

    private final ProductoService productoService;
    private final String UPLOAD_DIR_RELATIVE = "/img/";


    public ProductoController(ProductoService productoService) {
        this.productoService = productoService;
    }

    // Endpoint principal - GET /productos/ - Lista todos los productos
    @GetMapping("/")
    public String listarProductos(Model model) {
        List<Producto_Marca> productos = productoService.listarProductos();
        model.addAttribute("productos", productos);
        model.addAttribute("mensaje", "Lista de productos");
        return "producto/productos";
    }

    // Endpoint POST - /productos/guardar - Guarda un nuevo producto y redirige a listar
    @PostMapping("/guardar")
    public String guardarProducto(@RequestParam String nombreProducto,
                                  @RequestParam String descripcion,
                                  @RequestParam double precio,
                                  @RequestParam int idMarca,
                                  @RequestParam("linkImageu") MultipartFile file,
                                  Model model) {

        String linkImagenGuardada = guardarImagen(file, nombreProducto, idMarca);
        if (linkImagenGuardada == null) {
            model.addAttribute("mensaje", "Error al guardar la imagen.");
            model.addAttribute("productos", productoService.listarProductos());
            return "producto/productos";
        }

        // Crear nuevo producto
        Producto nuevoProducto = new Producto();
        nuevoProducto.setNombre_producto(nombreProducto);
        nuevoProducto.setDescripcion(descripcion);
        nuevoProducto.setPrecio(precio);
        nuevoProducto.setId_marca(idMarca);
        nuevoProducto.setLink_imaguen(linkImagenGuardada);
        nuevoProducto.setAnulado(false);

        int resultado = productoService.crearProducto(nuevoProducto);

        if (resultado > 0) {
            return "redirect:/productos/";
        } else {
            List<Producto_Marca> productos = productoService.listarProductos();
            model.addAttribute("productos", productos);
            model.addAttribute("mensaje", "Error al crear el producto");
            return "producto/productos";
        }
    }

    // Endpoint GET - /productos/editar/{id} - Busca un producto y lo envía a un_producto.jsp
    @GetMapping("/editar/{id}")
    public String editarProducto(@PathVariable int id, Model model) {
        Producto producto = productoService.buscarProductoPorId(id);

        if (producto != null) {
            model.addAttribute("producto", producto);
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

        String linkImagenGuardada = guardarImagen(file, nombreProducto, idMarca);
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

        int resultado = productoService.actualizarProducto(producto);

        if (resultado > 0) {
            // Actualización exitosa - redirigir al listado
            return "redirect:/productos/";
        } else {
            // Error en la actualización - mostrar error en el listado
            List<Producto_Marca> productos = productoService.listarProductos();
            model.addAttribute("productos", productos);
            model.addAttribute("mensaje", "Error al actualizar el producto");
            return "producto/productos";
        }
    }

    private String guardarImagen(MultipartFile file, String nombreProducto, int idMarca) {
    if (file.isEmpty()) {
        return null;
    }

    try {
        // Leer el contenido del archivo en un array de bytes para poder usarlo varias veces
        byte[] bytes = file.getBytes();

        // Obtener la ruta absoluta del directorio de carga en el sistema de archivos
        String uploadDirPath = new File("src/main/resources/static" + UPLOAD_DIR_RELATIVE).getAbsolutePath();
        File uploadDir = new File(uploadDirPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String originalFilename = file.getOriginalFilename();
        String extension = "";
        if (originalFilename != null && originalFilename.contains(".")) {
            extension = originalFilename.substring(originalFilename.lastIndexOf("."));
        }

        String nuevoNombre = nombreProducto.replace(" ", "_") + "___" + idMarca + extension;
        Path pathDestino = Paths.get(uploadDirPath + File.separator + nuevoNombre);

        // Escribir los bytes en el primer destino (src)
        Files.write(pathDestino, bytes);

        // También copiar al directorio target/classes para que esté disponible inmediatamente
        String targetDirPath = new File("target/classes/static" + UPLOAD_DIR_RELATIVE).getAbsolutePath();
        File targetDir = new File(targetDirPath);
        if (!targetDir.exists()) {
            targetDir.mkdirs();
        }
        Path pathDestinoTarget = Paths.get(targetDirPath + File.separator + nuevoNombre);
        // Escribir los mismos bytes en el segundo destino (target)
        Files.write(pathDestinoTarget, bytes);


        return UPLOAD_DIR_RELATIVE + nuevoNombre; // Retorna la ruta relativa para la BD

    } catch (IOException e) {
        e.printStackTrace();
        return null;
    }
}
}

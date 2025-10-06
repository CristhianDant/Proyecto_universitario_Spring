package com.example.demo.Marca;

import java.util.List;

public interface MarcaDAO {

    // Listar todas las marcas
    List<Marca> listarMarcas();

    // Crear una nueva marca
    int crearMarca(Marca marca);

    // Actualizar/editar una marca existente
    int actualizarMarca(Marca marca);

    // Buscar marca por ID (útil para operaciones de edición)
    Marca buscarMarcaPorId(int idMarca);

    // Verificar si existe una marca por nombre (útil para validaciones)
    boolean existeMarcaPorNombre(String nombreMarca);
}

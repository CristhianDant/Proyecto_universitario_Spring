package com.example.demo.Producto;

import java.util.List;


public interface ProductoDAO {

    List <Producto> Productos_listado();
    List<String> getMarcasUnicas();
    List<Producto> findByMarca(String marca);

}

package com.example.demo.Marca;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class MarcaServiceImp implements MarcaService {

    private final MarcaDAO marcaDAO;

    public MarcaServiceImp(MarcaDAO marcaDAO) {
        this.marcaDAO = marcaDAO;
    }

    @Override
    public List<Marca> listarMarcas() {
        return marcaDAO.listarMarcas();
    }

    @Override
    public int crearMarca(Marca marca) {
        return marcaDAO.crearMarca(marca);
    }

    @Override
    public int actualizarMarca(Marca marca) {
        return marcaDAO.actualizarMarca(marca);
    }

    @Override
    public Marca buscarMarcaPorId(int idMarca) {
        return marcaDAO.buscarMarcaPorId(idMarca);
    }

    @Override
    public boolean existeMarcaPorNombre(String nombreMarca) {
        return marcaDAO.existeMarcaPorNombre(nombreMarca);
    }
}

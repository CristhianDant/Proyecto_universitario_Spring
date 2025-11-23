package com.example.demo.Marca;

import com.example.demo.Utilis.StringUtils;
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
    public List<Marca> listarMarcasActivas() {
        return marcaDAO.listarMarcasActivas();
    }

    @Override
    public int crearMarca(Marca marca) {
        // Capitalizar nombre de marca
        marca.setNombreMarca(StringUtils.capitalize(marca.getNombreMarca()));

        // Validar nombre de marca
        String nombre = marca.getNombreMarca();
        if (nombre == null || nombre.isEmpty()) {
            throw new IllegalArgumentException("Nombre de marca no puede ser nulo o vacío");
        }

        return marcaDAO.crearMarca(marca);
    }

    @Override
    public int actualizarMarca(Marca marca) {
        // Capitalizar nombre de marca
        marca.setNombreMarca(StringUtils.capitalize(marca.getNombreMarca()));

        // Validar nombre de marca
        String nombre = marca.getNombreMarca();
        if (nombre == null || nombre.isEmpty()) {
            throw new IllegalArgumentException("Nombre de marca no puede ser nulo o vacío");
        }

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

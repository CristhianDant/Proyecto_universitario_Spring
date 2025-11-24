package com.example.demo.Dashboard;

import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Implementación del servicio para las métricas del Dashboard
 */
@Service
public class DashboardServiceImp implements DashboardService {

    private final DashboardDAO dashboardDAO;

    public DashboardServiceImp(DashboardDAO dashboardDAO) {
        this.dashboardDAO = dashboardDAO;
    }

    @Override
    public List<IngresosMensuales> obtenerIngresosMensuales() {
        return dashboardDAO.obtenerIngresosMensuales();
    }

    @Override
    public List<PerdidasAnulados> obtenerPerdidasAnulados() {
        return dashboardDAO.obtenerPerdidasAnulados();
    }

    @Override
    public List<IngresosPorMarca> obtenerIngresosPorMarca() {
        return dashboardDAO.obtenerIngresosPorMarca();
    }

    @Override
    public List<IngresosPorMarcaMes> obtenerIngresosPorMarcaPorMes(int idMarca) {
        return dashboardDAO.obtenerIngresosPorMarcaPorMes(idMarca);
    }
}


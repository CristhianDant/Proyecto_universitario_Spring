package com.example.demo.Dashboard;

import java.util.List;

public interface DashboardService {
    List<IngresosMensuales> obtenerIngresosMensuales();
    List<PerdidasAnulados> obtenerPerdidasAnulados();
    List<IngresosPorMarca> obtenerIngresosPorMarca();
    List<IngresosPorMarcaMes> obtenerIngresosPorMarcaPorMes(int idMarca);
}


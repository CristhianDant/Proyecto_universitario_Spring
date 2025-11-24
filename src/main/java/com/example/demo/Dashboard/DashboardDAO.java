package com.example.demo.Dashboard;

import java.util.List;


public interface DashboardDAO {
    List<IngresosMensuales> obtenerIngresosMensuales();
    List<PerdidasAnulados> obtenerPerdidasAnulados();
    List<IngresosPorMarca> obtenerIngresosPorMarca();
    List<IngresosPorMarcaMes> obtenerIngresosPorMarcaPorMes(int idMarca);
}


package com.example.demo.Dashboard;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Controlador REST para las métricas del Dashboard
 */
@RestController
@RequestMapping("/api/dashboard")
@CrossOrigin(origins = "*") // Permite CORS para el frontend
public class DashboardController {

    private final DashboardService dashboardService;

    public DashboardController(DashboardService dashboardService) {
        this.dashboardService = dashboardService;
    }


    @GetMapping("/ingresos-mensuales")
    public ResponseEntity<List<IngresosMensuales>> obtenerIngresosMensuales() {
        List<IngresosMensuales> ingresos = dashboardService.obtenerIngresosMensuales();
        return ResponseEntity.ok(ingresos);
    }


    @GetMapping("/perdidas-anulados")
    public ResponseEntity<List<PerdidasAnulados>> obtenerPerdidasAnulados() {
        List<PerdidasAnulados> perdidas = dashboardService.obtenerPerdidasAnulados();
        return ResponseEntity.ok(perdidas);
    }


    @GetMapping("/ingresos-por-marca")
    public ResponseEntity<List<IngresosPorMarca>> obtenerIngresosPorMarca() {
        List<IngresosPorMarca> ingresos = dashboardService.obtenerIngresosPorMarca();
        return ResponseEntity.ok(ingresos);
    }

    /**
     * Endpoint para obtener los ingresos de una marca específica por mes en los últimos 8 meses
     * GET /api/dashboard/ingresos-por-marca/{idMarca}
     *
     * @param idMarca ID de la marca a filtrar
     * @return Lista de ingresos por marca mes
     */
    @GetMapping("/ingresos-por-marca/{idMarca}")
    public ResponseEntity<List<IngresosPorMarcaMes>> obtenerIngresosPorMarcaPorMes(@PathVariable int idMarca) {
        List<IngresosPorMarcaMes> ingresos = dashboardService.obtenerIngresosPorMarcaPorMes(idMarca);
        return ResponseEntity.ok(ingresos);
    }

    @GetMapping("/metricas")
    public ResponseEntity<Map<String, Object>> obtenerTodasLasMetricas() {
        Map<String, Object> metricas = new HashMap<>();

        metricas.put("ingresosMensuales", dashboardService.obtenerIngresosMensuales());
        metricas.put("perdidasAnulados", dashboardService.obtenerPerdidasAnulados());
        metricas.put("ingresosPorMarca", dashboardService.obtenerIngresosPorMarca());

        return ResponseEntity.ok(metricas);
    }
}


package com.example.demo.Dashboard;

import java.math.BigDecimal;

/**
 * Clase DTO para representar los ingresos por marca
 */
public class IngresosPorMarca {
    private String nombreMarca;
    private BigDecimal totalIngresos;

    public IngresosPorMarca() {
    }

    public IngresosPorMarca(String nombreMarca, BigDecimal totalIngresos) {
        this.nombreMarca = nombreMarca;
        this.totalIngresos = totalIngresos;
    }

    public String getNombreMarca() {
        return nombreMarca;
    }

    public void setNombreMarca(String nombreMarca) {
        this.nombreMarca = nombreMarca;
    }

    public BigDecimal getTotalIngresos() {
        return totalIngresos;
    }

    public void setTotalIngresos(BigDecimal totalIngresos) {
        this.totalIngresos = totalIngresos;
    }

    @Override
    public String toString() {
        return "IngresosPorMarca{" +
                "nombreMarca='" + nombreMarca + '\'' +
                ", totalIngresos=" + totalIngresos +
                '}';
    }
}


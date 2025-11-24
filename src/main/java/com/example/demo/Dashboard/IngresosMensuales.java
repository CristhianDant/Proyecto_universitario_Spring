package com.example.demo.Dashboard;

import java.math.BigDecimal;

/**
 * Clase DTO para representar los ingresos mensuales
 */
public class IngresosMensuales {
    private String mes; // Formato: "2023-01" o nombre del mes
    private BigDecimal totalIngresos;

    public IngresosMensuales() {
    }

    public IngresosMensuales(String mes, BigDecimal totalIngresos) {
        this.mes = mes;
        this.totalIngresos = totalIngresos;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public BigDecimal getTotalIngresos() {
        return totalIngresos;
    }

    public void setTotalIngresos(BigDecimal totalIngresos) {
        this.totalIngresos = totalIngresos;
    }

    @Override
    public String toString() {
        return "IngresosMensuales{" +
                "mes='" + mes + '\'' +
                ", totalIngresos=" + totalIngresos +
                '}';
    }
}


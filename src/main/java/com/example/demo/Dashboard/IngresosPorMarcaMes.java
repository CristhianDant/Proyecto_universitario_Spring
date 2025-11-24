package com.example.demo.Dashboard;

import java.math.BigDecimal;

/**
 * Clase DTO para representar los ingresos por marca por mes
 */
public class IngresosPorMarcaMes {
    private String mes; // Formato: "2023-04"
    private String nombreMarca;
    private BigDecimal totalIngresos;

    public IngresosPorMarcaMes() {
    }

    public IngresosPorMarcaMes(String mes, String nombreMarca, BigDecimal totalIngresos) {
        this.mes = mes;
        this.nombreMarca = nombreMarca;
        this.totalIngresos = totalIngresos;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
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
        return "IngresosPorMarcaMes{" +
                "mes='" + mes + '\'' +
                ", nombreMarca='" + nombreMarca + '\'' +
                ", totalIngresos=" + totalIngresos +
                '}';
    }
}


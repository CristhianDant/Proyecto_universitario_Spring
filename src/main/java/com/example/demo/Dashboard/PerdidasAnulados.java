package com.example.demo.Dashboard;

import java.math.BigDecimal;

/**
 * Clase DTO para representar las pérdidas por documentos anulados
 */
public class PerdidasAnulados {
    private String mes; // Formato: "2023-01" o nombre del mes
    private BigDecimal totalPerdidas;

    public PerdidasAnulados() {
    }

    public PerdidasAnulados(String mes, BigDecimal totalPerdidas) {
        this.mes = mes;
        this.totalPerdidas = totalPerdidas;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public BigDecimal getTotalPerdidas() {
        return totalPerdidas;
    }

    public void setTotalPerdidas(BigDecimal totalPerdidas) {
        this.totalPerdidas = totalPerdidas;
    }

    @Override
    public String toString() {
        return "PerdidasAnulados{" +
                "mes='" + mes + '\'' +
                ", totalPerdidas=" + totalPerdidas +
                '}';
    }
}


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Dashboard</title>
    <jsp:include page="estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard-charts.css">
    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <jsp:include page="estructura/header.jsp" />
    <div class="d-flex">
        <jsp:include page="estructura/aside.jsp" />
        <div class="container-fluid py-4">
            <div class="dashboard-container">

                <!-- Sección: Gráficos de Ingresos y Pérdidas -->
                <div class="charts-row two-columns">

                    <!-- Gráfico: Ingresos Mensuales -->
                    <div class="chart-card">
                        <div class="chart-card-header">
                            <div>
                                <h3 class="chart-card-title">📊 Ingresos Mensuales</h3>
                                <p class="chart-card-subtitle">Últimos 8 meses</p>
                            </div>
                        </div>
                        <div class="chart-container">
                            <canvas id="chartIngresos"></canvas>
                        </div>
                        <p style="text-align: center; color: #999; font-size: 12px; margin: 10px 0 0 0;">
                            Ingresos totales generados por documentos completados
                        </p>
                    </div>

                    <!-- Gráfico: Pérdidas por Anulados -->
                    <div class="chart-card">
                        <div class="chart-card-header">
                            <div>
                                <h3 class="chart-card-title">📉 Pérdidas por Anulados</h3>
                                <p class="chart-card-subtitle">Últimos 8 meses</p>
                            </div>
                        </div>
                        <div class="chart-container">
                            <canvas id="chartPerdidas"></canvas>
                        </div>
                        <p style="text-align: center; color: #999; font-size: 12px; margin: 10px 0 0 0;">
                            Montos perdidos por documentos anulados
                        </p>
                    </div>

                </div>

                <!-- Sección: Gráfico de Ingresos por Marca -->
                <div class="charts-row full-width">

                    <div class="chart-card">
                        <div class="chart-card-header">
                            <div>
                                <h3 class="chart-card-title">🏷️ Ingresos por Marca</h3>
                                <p class="chart-card-subtitle">Últimos 8 meses - Solo marcas activas</p>
                            </div>
                        </div>
                        <div class="chart-container">
                            <canvas id="chartMarcas"></canvas>
                        </div>
                        <div class="marca-selector">
                            <label for="selectMarca">Seleccionar Marca para Ver Detalles por Mes:</label>
                            <select id="selectMarca">
                                <option value="">-- Cargando marcas --</option>
                            </select>
                        </div>
                    </div>

                </div>

                <!-- Sección: Gráfico Dinámico de Marca Seleccionada -->
                <div class="charts-row full-width" id="seccionMarcaMeses" style="display: none;">

                    <div class="chart-card">
                        <div class="chart-card-header">
                            <div>
                                <h3 class="chart-card-title">📈 Detalle de Marca por Mes</h3>
                                <p class="chart-card-subtitle">Últimos 8 meses - Desglose mensual</p>
                            </div>
                        </div>
                        <div class="chart-container">
                            <canvas id="chartMarcaMeses"></canvas>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <jsp:include page="estructura/scripts_estructura.jsp" />

    <!-- Script de Dashboard con Gráficos -->
    <script src="${pageContext.request.contextPath}/js/dashboard/dashboard-metrics.js"></script>

</body>
</html>



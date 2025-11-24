// Dashboard Metrics - Funciones para consumir las APIs
const API_BASE = 'http://localhost:8080/api/dashboard';

let chartIngresos = null;
let chartPerdidas = null;
let chartMarcas = null;

/**
 * Obtiene los ingresos mensuales de la API
 */
async function cargarIngresosMensuales() {
    try {
        const response = await fetch(`${API_BASE}/ingresos-mensuales`);
        const data = await response.json();
        console.log('Ingresos Mensuales:', data);
        renderGraficoIngresos(data);
    } catch (error) {
        console.error('Error cargando ingresos mensuales:', error);
        mostrarError('Error al cargar ingresos mensuales');
    }
}

/**
 * Obtiene las pérdidas por anulados de la API
 */
async function cargarPerdidasAnulados() {
    try {
        const response = await fetch(`${API_BASE}/perdidas-anulados`);
        const data = await response.json();
        console.log('Pérdidas Anulados:', data);
        renderGraficoPerdidas(data);
    } catch (error) {
        console.error('Error cargando pérdidas:', error);
        mostrarError('Error al cargar pérdidas');
    }
}

/**
 * Obtiene los ingresos por marca de la API
 */
async function cargarIngresosPorMarca() {
    try {
        const response = await fetch(`${API_BASE}/ingresos-por-marca`);
        const data = await response.json();
        console.log('Ingresos por Marca:', data);
        renderGraficoMarcas(data);
    } catch (error) {
        console.error('Error cargando ingresos por marca:', error);
        mostrarError('Error al cargar ingresos por marca');
    }
}

/**
 * Obtiene los ingresos de una marca específica por mes
 * @param {number} idMarca - ID de la marca
 */
async function cargarIngresosPorMarcaPorMes(idMarca) {
    try {
        const response = await fetch(`${API_BASE}/ingresos-por-marca/${idMarca}`);
        const data = await response.json();
        console.log(`Ingresos Marca ${idMarca} por Mes:`, data);
        renderGraficoMarcaMeses(data);
    } catch (error) {
        console.error('Error cargando ingresos por marca y mes:', error);
        mostrarError('Error al cargar datos de la marca');
    }
}

/**
 * Renderiza el gráfico de Ingresos Mensuales
 */
function renderGraficoIngresos(data) {
    const ctx = document.getElementById('chartIngresos');
    if (!ctx) {
        console.error('Elemento chartIngresos no encontrado');
        return;
    }

    // Destruir gráfico anterior si existe
    if (chartIngresos) {
        chartIngresos.destroy();
    }

    const labels = data.map(item => item.mes);
    const valores = data.map(item => parseFloat(item.totalIngresos));

    chartIngresos = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Ingresos Mensuales (S/.)',
                data: valores,
                backgroundColor: 'rgba(75, 192, 192, 0.7)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1,
                borderRadius: 5
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: true,
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Ingresos de los Últimos 8 Meses'
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function(value) {
                            return 'S/. ' + value.toLocaleString('es-PE');
                        }
                    }
                }
            }
        }
    });
}

/**
 * Renderiza el gráfico de Pérdidas por Anulados
 */
function renderGraficoPerdidas(data) {
    const ctx = document.getElementById('chartPerdidas');
    if (!ctx) {
        console.error('Elemento chartPerdidas no encontrado');
        return;
    }

    // Destruir gráfico anterior si existe
    if (chartPerdidas) {
        chartPerdidas.destroy();
    }

    const labels = data.map(item => item.mes);
    const valores = data.map(item => parseFloat(item.totalPerdidas));

    chartPerdidas = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Pérdidas por Anulados (S/.)',
                data: valores,
                backgroundColor: 'rgba(255, 99, 132, 0.7)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1,
                borderRadius: 5
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: true,
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Pérdidas por Documentos Anulados (Últimos 8 Meses)'
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function(value) {
                            return 'S/. ' + value.toLocaleString('es-PE');
                        }
                    }
                }
            }
        }
    });
}

/**
 * Renderiza el gráfico de Ingresos por Marca
 */
function renderGraficoMarcas(data) {
    const ctx = document.getElementById('chartMarcas');
    if (!ctx) {
        console.error('Elemento chartMarcas no encontrado');
        return;
    }

    // Destruir gráfico anterior si existe
    if (chartMarcas) {
        chartMarcas.destroy();
    }

    const labels = data.map(item => item.nombreMarca);
    const valores = data.map(item => parseFloat(item.totalIngresos));

    // Generar colores aleatorios
    const colores = labels.map(() => generarColorAleatorio());

    chartMarcas = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Ingresos por Marca (S/.)',
                data: valores,
                backgroundColor: colores,
                borderColor: colores,
                borderWidth: 1,
                borderRadius: 5
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: true,
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Ingresos por Marca (Últimos 8 Meses) - Solo Marcas Activas'
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function(value) {
                            return 'S/. ' + value.toLocaleString('es-PE');
                        }
                    }
                }
            }
        }
    });

    // Actualizar selector de marcas
    actualizarSelectorMarcas(labels);
}

/**
 * Renderiza el gráfico de Ingresos de una Marca por Meses
 */
function renderGraficoMarcaMeses(data) {
    const ctx = document.getElementById('chartMarcaMeses');
    if (!ctx) {
        console.error('Elemento chartMarcaMeses no encontrado');
        return;
    }

    const labels = data.map(item => item.mes);
    const valores = data.map(item => parseFloat(item.totalIngresos));
    const nombreMarca = data.length > 0 ? data[0].nombreMarca : 'Marca';

    // Destruir gráfico anterior si existe
    if (window.chartMarcaMeses && typeof window.chartMarcaMeses.destroy === 'function') {
        window.chartMarcaMeses.destroy();
    }

    window.chartMarcaMeses = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: `Ingresos ${nombreMarca} (S/.`,
                data: valores,
                backgroundColor: 'rgba(54, 162, 235, 0.7)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1,
                borderRadius: 5
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: true,
                    position: 'top',
                },
                title: {
                    display: true,
                    text: `Ingresos de ${nombreMarca} - Últimos 8 Meses (Detallado por Mes)`
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function(value) {
                            return 'S/. ' + value.toLocaleString('es-PE');
                        }
                    }
                }
            }
        }
    });
}

/**
 * Actualiza el selector de marcas
 */
function actualizarSelectorMarcas(marcas) {
    const selector = document.getElementById('selectMarca');
    if (!selector) return;

    selector.innerHTML = '<option value="">-- Seleccionar Marca --</option>';
    marcas.forEach((marca, index) => {
        const option = document.createElement('option');
        option.value = index + 1; // Asumiendo IDs secuenciales
        option.textContent = marca;
        selector.appendChild(option);
    });

    // Agregar evento al selector
    selector.addEventListener('change', function(e) {
        const seccion = document.getElementById('seccionMarcaMeses');
        if (this.value) {
            cargarIngresosPorMarcaPorMes(this.value);
            // Mostrar la sección con animación
            seccion.style.display = 'grid';
            seccion.scrollIntoView({ behavior: 'smooth', block: 'start' });
        } else {
            // Ocultar la sección
            seccion.style.display = 'none';
        }
    });
}

/**
 * Genera un color aleatorio en formato RGBA
 */
function generarColorAleatorio() {
    const r = Math.floor(Math.random() * 255);
    const g = Math.floor(Math.random() * 255);
    const b = Math.floor(Math.random() * 255);
    return `rgba(${r}, ${g}, ${b}, 0.7)`;
}

/**
 * Muestra un mensaje de error
 */
function mostrarError(mensaje) {
    const alerta = document.createElement('div');
    alerta.className = 'alert alert-danger alert-dismissible fade show';
    alerta.innerHTML = `
        ${mensaje}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `;
    document.body.insertBefore(alerta, document.body.firstChild);
}

/**
 * Inicializa el dashboard cargando todos los gráficos
 */
function inicializarDashboard() {
    console.log('Inicializando Dashboard...');
    cargarIngresosMensuales();
    cargarPerdidasAnulados();
    cargarIngresosPorMarca();
}

// Cargar el dashboard cuando el DOM esté listo
document.addEventListener('DOMContentLoaded', inicializarDashboard);


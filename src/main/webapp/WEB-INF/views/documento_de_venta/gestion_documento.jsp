<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Gestión de Documentos de Venta</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/documento_venta.css">
</head>
<body>

<jsp:include page="../estructura/header.jsp" />
<div class="d-flex">
    <jsp:include page="../estructura/aside.jsp" />

    <main class="container-fluid py-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>Documentos de Venta</h2>
        </div>

        <div class="card p-4 mb-4">
            <div class="row g-3 align-items-center">
                <div class="col-md-2">
                    <label for="fecha-desde" class="form-label">Fecha de Creación Desde:</label>
                    <input type="date" class="form-control" id="fecha-desde">
                </div>
                <div class="col-md-2">
                    <label for="buscar-serie" class="form-label">Buscar Nro. Serie</label>
                    <input type="text" class="form-control" id="buscar-serie">
                </div>
                <div class="col-md-2">
                    <label for="nro-serie-select" class="form-label">Nro. Serie:</label>
                    <select class="form-select" id="nro-serie-select">
                        <option selected>Seleccionar...</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="buscar-por-serie" class="form-label">Buscar por Nro. Serie:</label>
                    <input type="text" class="form-control" id="buscar-por-serie">
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="mostrar-pendientes">
                        <label class="form-check-label" for="mostrar-pendientes">
                            Mostrar solo pendientes
                        </label>
                    </div>
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <button class="btn btn-outline-secondary me-2" type="button">Limpiar Filtros</button>
                    <a href="${pageContext.request.contextPath}/venta/compra" class="btn btn-primary" role="button">+ Nuevo Documento</a>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>ID Documento</th>
                        <th>Razón Social</th>
                        <th>Fecha Documento</th>
                        <th>Fecha Vencimiento</th>
                        <th>Fecha Entrega</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>#001233</td>
                        <td>Laboratorios Alfa</td>
                        <td>FAC-001</td>
                        <td>2023-13-45</td>
                        <td>Pendiente Envío</td>
                        <td><span class="badge bg-warning text-dark">Pendiente</span></td>
                        <td><a href="#">[Ver | Editar]</a></td>
                    </tr>
                    <tr>
                        <td>#001233</td>
                        <td>Universidad Nacional</td>
                        <td>$1,200.04</td>
                        <td>2023-11-26</td>
                        <td>Nuevo Pedido</td>
                        <td><span class="badge bg-info text-dark">Nuevo</span></td>
                        <td><a href="#">[Ver | Editar]</a></td>
                    </tr>
                    <tr>
                        <td>#001231</td>
                        <td>Universidad Biocional</td>
                        <td>$1,250.03</td>
                        <td>2023-11-26</td>
                        <td>Pendiente Envío</td>
                        <td><span class="badge bg-warning text-dark">Pendiente</span></td>
                        <td><a href="#">[Ver | Editar]</a></td>
                    </tr>
                    <tr>
                        <td>#930.00</td>
                        <td>Instituto de Valle</td>
                        <td>$890.03</td>
                        <td>2023-11-26</td>
                        <td>(1)2?30-10-25</td>
                        <td><span class="badge bg-warning text-dark">Pendiente</span></td>
                        <td><a href="#">[Ver | Editar]</a></td>
                    </tr>
                    <tr>
                        <td>BOL-002</td>
                        <td>Dr. Garcia (Investigador)</td>
                        <td>$890.00</td>
                        <td>2023-11-25</td>
                        <td>Nuevo Pedido</td>
                        <td><span class="badge bg-info text-dark">Nuevo</span></td>
                        <td><a href="#">[Ver | Editar]</a></td>
                    </tr>
                    <tr>
                        <td>#001229</td>
                        <td>Dr. Garcia (Investigador)</td>
                        <td>$480.00</td>
                        <td>2023-11-26</td>
                        <td>Entregado</td>
                        <td><span class="badge bg-success">Entregado</span></td>
                        <td><a href="#">[Ver | Imprimir]</a></td>
                    </tr>
                    </tbody>
                </table>
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-end">
                        <li class="page-item disabled"><a class="page-link" href="#">Anterior</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Siguiente</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </main>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>

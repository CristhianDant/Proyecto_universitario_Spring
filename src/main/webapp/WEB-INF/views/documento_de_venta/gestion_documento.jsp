<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
            <form method="get" action="${pageContext.request.contextPath}/venta/gestion_ventas">
                <div class="row g-3 align-items-center">
                    <div class="col-md-3">
                        <label for="fechaInicio" class="form-label">Fecha de Creación Desde:</label>
                        <input type="date" class="form-control" id="fechaInicio" name="fechaInicio" value="${param.fechaInicio}">
                    </div>
                    <div class="col-md-3">
                        <label for="fechaFin" class="form-label">Fecha de Creación Hasta:</label>
                        <input type="date" class="form-control" id="fechaFin" name="fechaFin" value="${param.fechaFin}">
                    </div>
                    <div class="col-md-3 d-flex align-items-end">
                        <button class="btn btn-outline-primary me-2" type="submit">Filtrar</button>
                        <button class="btn btn-outline-secondary me-2" type="button" onclick="limpiarFiltros()">Limpiar Filtros</button>
                        <a href="${pageContext.request.contextPath}/venta/compra" class="btn btn-primary" role="button">+ Nuevo Documento</a>
                    </div>
                </div>
            </form>
        </div>

        <div class="card">
            <div class="card-body">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>ID Documento</th>
                        <th>Razón Social</th>
                        <th>Nro. Serie - Nro. Documento</th>
                        <th>Fecha Creación</th>
                        <th>Fecha Vencimiento</th>
                        <th>Fecha Entrega</th>
                        <th>Total</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="doc" items="${documentos}">
                        <tr>
                            <td>${doc.idDocumento}</td>
                            <td>${doc.razonSocial}</td>
                            <td>${doc.nroSerie}-${doc.nroDocumento}</td>
                            <td><fmt:formatDate value="${doc.fechaCreacion}" pattern="yyyy-MM-dd"/></td>
                            <td><fmt:formatDate value="${doc.fechaVencimiento}" pattern="yyyy-MM-dd"/></td>
                            <td><fmt:formatDate value="${doc.fechaEntrega}" pattern="yyyy-MM-dd"/></td>
                            <td>S/ ${doc.total}</td>
                            <td><span class="badge bg-warning text-dark">Pendiente</span></td>
                            <td><a href="#">[Ver | Editar]</a></td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty documentos}">
                        <tr>
                            <td colspan="9" class="text-center">No hay documentos para mostrar. Use los filtros para buscar.</td>
                        </tr>
                    </c:if>
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
<script>
function limpiarFiltros() {
    document.getElementById('fechaInicio').value = '';
    document.getElementById('fechaFin').value = '';
    window.location.href = '${pageContext.request.contextPath}/venta/gestion_ventas';
}
</script>
</body>
</html>

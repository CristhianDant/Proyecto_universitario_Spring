<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Ver Documento de Venta</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/documento_venta.css">
</head>
<body>

<jsp:include page="../estructura/header.jsp" />

<main class="container my-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Documento de Venta: ${documento.nroSerie}-${documento.nroDocumento}</h2>
        <a href="${pageContext.request.contextPath}/venta/gestion_ventas" class="btn btn-secondary">Volver</a>
    </div>

    <!-- Mostrar mensajes de éxito o error -->
    <c:if test="${not empty success}">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            ${success}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            ${error}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h5>Información del Documento</h5>
            <div>
                <c:if test="${documento.estado == 'PENDIENTE'}">
                    <form action="${pageContext.request.contextPath}/venta/completar-documento" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="${documento.idDocumento}">
                        <button type="submit" class="btn btn-success btn-sm" onclick="return confirm('¿Está seguro de completar este documento?')">Completar</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/venta/anular-documento" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="${documento.idDocumento}">
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('¿Está seguro de anular este documento?')">Anular</button>
                    </form>
                </c:if>
                <c:if test="${documento.estado == 'COMPLETADO'}">
                    <form action="${pageContext.request.contextPath}/venta/anular-documento" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="${documento.idDocumento}">
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('¿Está seguro de anular este documento?')">Anular</button>
                    </form>
                </c:if>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <p><strong>ID Documento:</strong> ${documento.idDocumento}</p>
                    <p><strong>Razón Social:</strong> ${documento.razonSocial}</p>
                    <p><strong>Dirección de Entrega:</strong> ${documento.direccionEntrega}</p>
                    <p><strong>Referencia:</strong> ${documento.referencia}</p>
                </div>
                <div class="col-md-6">
                    <p><strong>Fecha de Creación:</strong> <fmt:formatDate value="${documento.fechaCreacion}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
                    <p><strong>Total:</strong> S/ ${documento.total}</p>
                    <p><strong>Estado:</strong> <span class="badge bg-warning text-dark">${documento.estado}</span></p>
                    <p><strong>ID Usuario:</strong> ${documento.idUser}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-header">
            <h5>Detalles del Documento</h5>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID Producto</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                    <th>Subtotal</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="detalle" items="${detalles}">
                    <tr>
                        <td>${detalle.idProducto}</td>
                        <td>${detalle.cantidad}</td>
                        <td>S/ ${detalle.precioUnitario}</td>
                        <td>S/ ${detalle.subtotal}</td>
                    </tr>
                </c:forEach>
                <c:if test="${empty detalles}">
                    <tr>
                        <td colspan="4" class="text-center">No hay detalles para este documento.</td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>

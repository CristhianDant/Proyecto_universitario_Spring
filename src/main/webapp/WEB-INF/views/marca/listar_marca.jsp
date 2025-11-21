<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Marcas</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">
</head>
<body>
    <jsp:include page="../estructura/header.jsp" />
    <div class="d-flex">
        <jsp:include page="../estructura/aside.jsp" />
        <main class="container-fluid py-4">
            <h1 class="text-center mb-4">Gestión de Marcas</h1>

            <!-- Formulario para crear nueva marca -->
            <div class="card">
                <div class="card-header">Nueva Marca</div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/marcas/guardar" method="post">
                        <div class="mb-3">
                            <label for="nombreMarca" class="form-label">Nombre de la Marca</label>
                            <input type="text" class="form-control" id="nombreMarca" name="nombreMarca" required>
                        </div>
                        <div class="mb-3">
                            <label for="procedencia" class="form-label">Procedencia</label>
                            <input type="text" class="form-control" id="procedencia" name="procedencia" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Crear Marca</button>
                    </form>
                </div>
            </div>

            <!-- Listado de marcas -->
            <div class="card mt-4">
                <div class="card-header">Listado de Marcas</div>
                <div class="card-body">
                    <c:if test="${not empty mensaje}">
                        <div class="alert alert-info">${mensaje}</div>
                    </c:if>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Procedencia</th>
                                <th>Anulado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="marca" items="${marcas}">
                                <tr>
                                    <td>${marca.idMarca}</td>
                                    <td>${marca.nombreMarca}</td>
                                    <td>${marca.procedencia}</td>
                                    <td>${marca.anulado ? 'Sí' : 'No'}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/marcas/editar/${marca.idMarca}" class="btn btn-sm btn-warning">Editar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty marcas}">
                                <tr>
                                    <td colspan="5" class="text-center">No hay marcas registradas</td>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</body>
</html>

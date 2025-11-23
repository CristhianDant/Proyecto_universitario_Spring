<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Editar Marca</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
</head>
<body>
    <jsp:include page="../estructura/header.jsp" />
    <main class="container mt-5">
        <h1 class="text-center mb-4">Editar Marca</h1>
        <c:if test="${not empty mensaje}"><div class="alert alert-danger">${mensaje}</div></c:if>
        <div class="card">
            <div class="card-header">Modificar Marca</div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/marcas/actualizar" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="idMarca" value="${marca.idMarca}">
                    <div class="mb-3">
                        <label for="nombreMarca" class="form-label">Nombre de la Marca</label>
                        <input type="text" class="form-control" id="nombreMarca" name="nombreMarca" value="${marca.nombreMarca}" required>
                    </div>
                    <div class="mb-3">
                        <label for="procedencia" class="form-label">Procedencia</label>
                        <input type="text" class="form-control" id="procedencia" name="procedencia" value="${marca.procedencia}" required>
                    </div>
                    <div class="mb-3">
                        <label for="descripcion" class="form-label">Descripción</label>
                        <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required>${marca.descripcion}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="linkImageu" class="form-label">Imagen Actual</label>
                        <div>
                            <img src="${pageContext.request.contextPath}${marca.link_imaguen}" alt="Imagen actual" style="max-width: 100px; margin-bottom: 10px;">
                        </div>
                        <label for="linkImageu" class="form-label">Subir Nueva Imagen (opcional)</label>
                        <input type="file" class="form-control" id="linkImageu" name="linkImageu" accept="image/webp">
                    </div>
                    <div class="mb-3">
                        <label for="anulado" class="form-label">Anulado</label>
                        <select class="form-control" id="anulado" name="anulado">
                            <option value="false" ${!marca.anulado ? 'selected' : ''}>No</option>
                            <option value="true" ${marca.anulado ? 'selected' : ''}>Sí</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Actualizar Marca</button>
                    <a href="${pageContext.request.contextPath}/marcas/" class="btn btn-secondary">Cancelar</a>
                </form>
            </div>
        </div>
    </main>
    <jsp:include page="../estructura/scripts_estructura.jsp" />
</body>
</html>

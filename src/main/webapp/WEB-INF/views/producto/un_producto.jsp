<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Editar Producto</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
</head>
<body>
    <jsp:include page="../estructura/header.jsp" />
    <main class="container mt-5">
        <h1 class="text-center mb-4">Editar Producto</h1>
        <div class="card">
            <div class="card-header">Modificar Producto</div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/productos/actualizar" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="idProducto" value="${producto.id_producto}">
                    <div class="mb-3">
                        <label for="nombreProducto" class="form-label">Nombre del Producto</label>
                        <input type="text" class="form-control" id="nombreProducto" name="nombreProducto" value="${producto.nombre_producto}" required>
                    </div>
                    <div class="mb-3">
                        <label for="descripcion" class="form-label">Descripción</label>
                        <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required>${producto.descripcion}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="precio" class="form-label">Precio</label>
                        <input type="number" class="form-control" id="precio" name="precio" step="0.01" value="${producto.precio}" required>
                    </div>
                    <div class="mb-3">
                        <label for="idMarca" class="form-label">Marca</label>
                        <input type="text" list="marcas" class="form-control" id="idMarca" name="idMarca" value="${producto.id_marca}" required>
                        <datalist id="marcas">
                            <c:forEach var="marca" items="${marcasActivas}">
                                <option value="${marca.idMarca}">${marca.nombreMarca}</option>
                            </c:forEach>
                        </datalist>
                    </div>
                    <div class="mb-3">
                        <label for="linkImageu" class="form-label">Imagen Actual</label>
                        <div>
                            <img src="${pageContext.request.contextPath}${producto.link_imaguen}" alt="Imagen actual" style="max-width: 100px; margin-bottom: 10px;">
                        </div>
                        <label for="linkImageu" class="form-label">Subir Nueva Imagen (opcional)</label>
                        <input type="file" class="form-control" id="linkImageu" name="linkImageu" accept="image/png, image/jpeg">
                    </div>
                    <div class="mb-3">
                        <label for="anulado" class="form-label">Anulado</label>
                        <select class="form-control" id="anulado" name="anulado">
                            <option value="false" ${!producto.anulado ? 'selected' : ''}>No</option>
                            <option value="true" ${producto.anulado ? 'selected' : ''}>Sí</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Actualizar Producto</button>
                    <a href="${pageContext.request.contextPath}/productos/" class="btn btn-secondary">Cancelar</a>
                </form>
            </div>
        </div>
    </main>
</body>
</html>

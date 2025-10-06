<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Editar Marca</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
</head>
<body>
    <jsp:include page="../estructura/header.jsp" />
    <main class="container mt-5">
        <h1 class="text-center mb-4">Editar Marca</h1>
        <div class="card">
            <div class="card-header">Modificar Marca</div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/marcas/actualizar" method="post">
                    <input type="hidden" name="idMarca" value="${marca.idMarca}">
                    <div class="mb-3">
                        <label for="nombreMarca" class="form-label">Nombre de la Marca</label>
                        <input type="text" class="form-control" id="nombreMarca" name="nombreMarca" value="${marca.nombreMarca}" required>
                    </div>
                    <div class="mb-3">
                        <label for="procedencia" class="form-label">Procedencia</label>
                        <input type="text" class="form-control" id="procedencia" name="procedencia" value="${marca.procedencia}" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Actualizar Marca</button>
                    <a href="${pageContext.request.contextPath}/marcas/" class="btn btn-secondary">Cancelar</a>
                </form>
            </div>
        </div>
    </main>
</body>
</html>


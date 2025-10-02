<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Marcas</title>
    <jsp:include page="estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
</head>
<body>
    <jsp:include page="estructura/header.jsp" />
    <main class="container mt-5">
        <h1 class="text-center mb-4">Gestión de Marcas</h1>
        <div class="card">
            <div class="card-header">Formulario de Marca</div>
            <div class="card-body">
                <form id="marca-form">
                    <input type="hidden" id="marca-id">
                    <div class="mb-3">
                        <label for="marca-nombre" class="form-label">Nombre de la Marca</label>
                        <input type="text" class="form-control" id="marca-nombre" required>
                    </div>
                    <div class="mb-3">
                        <label for="marca-procedencia" class="form-label">Procedencia</label>
                        <input type="text" class="form-control" id="marca-procedencia" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <button type="button" class="btn btn-secondary" id="cancel-edit" style="display:none;">Cancelar</button>
                </form>
            </div>
        </div>
        <div class="card mt-4">
            <div class="card-header">Listado de Marcas</div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Procedencia</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="marca-list"></tbody>
                </table>
            </div>
        </div>
    </main>
    <script src="${pageContext.request.contextPath}/js/marcas.js"></script>
</body>
</html>


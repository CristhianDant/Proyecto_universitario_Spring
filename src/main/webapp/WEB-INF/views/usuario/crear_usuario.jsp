<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Crear Usuario</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/crear_usuario.css">
</head>
<body>

<jsp:include page="../estructura/header.jsp" />

<main class="container mt-5">
    <h1 class="text-center mb-4">Crear Nuevo Usuario</h1>

    <c:if test="${not empty mensaje}">
        <div class="alert alert-info text-center">
            ${mensaje}
        </div>
    </c:if>

    <div class="card user-form-card">
        <div class="card-header">
            Formulario de Registro
        </div>
        <div class="card-body">
            <form id="user-form" action="${pageContext.request.contextPath}/usuario/crear" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Nombre de Usuario</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Correo Electrónico</label>
                    <input type="email" class="form-control" id="email" name="email">
                </div>
                <div class="mb-3">
                    <label for="ruc_dni_cliente" class="form-label">RUC o DNI</label>
                    <input type="text" class="form-control" id="ruc_dni_cliente" name="ruc_dni_cliente">
                </div>
                <div class="mb-3">
                    <label for="telefono" class="form-label">Teléfono</label>
                    <input type="tel" class="form-control" id="telefono" name="telefono">
                </div>
                <div class="mb-3">
                    <label for="direccion_fiscal" class="form-label">Dirección Fiscal</label>
                    <input type="text" class="form-control" id="direccion_fiscal" name="direccion_fiscal">
                </div>
                <button type="submit" class="btn btn-primary w-100">Crear Usuario</button>
            </form>
        </div>
    </div>
</main>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Documento de Venta</title>
    <jsp:include page="../estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/documento_venta.css">
</head>
<body>

<jsp:include page="../estructura/header.jsp" />

<main class="container my-5">
    <div class="card venta-card">
        <div class="card-header text-center">
            <h2>Documento de Venta</h2>
        </div>
        <div class="card-body">
            <!-- Datos del Cliente -->
            <fieldset class="border p-3 mb-4">
                <legend class="w-auto px-2">Datos del Cliente</legend>
                <form id="cliente-form">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="razon_social" class="form-label">Razón Social</label>
                            <input type="text" class="form-control" id="razon_social" name="razon_social" required>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="nro_serie" class="form-label">Nro. Serie</label>
                            <input type="text" class="form-control" id="nro_serie" name="nro_serie" required>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="nro_documento" class="form-label">Nro. Documento</label>
                            <input type="text" class="form-control" id="nro_documento" name="nro_documento" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="direccion_entrega" class="form-label">Dirección de Entrega</label>
                        <input type="text" class="form-control" id="direccion_entrega" name="direccion_entrega">
                    </div>
                    <div class="mb-3">
                        <label for="referencia" class="form-label">Referencia</label>
                        <input type="text" class="form-control" id="referencia" name="referencia">
                    </div>
                </form>
            </fieldset>

            <!-- Detalle de Venta -->
            <fieldset class="border p-3">
                <legend class="w-auto px-2">Detalle de Productos</legend>
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio Unitario</th>
                            <th>Subtotal</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody id="detalle-venta-body">
                        <!-- Las filas de productos se agregarán aquí dinámicamente -->
                        <tr>
                            <td>Ejemplo: Asa de Siembra</td>
                            <td>2</td>
                            <td>S/ 3.00</td>
                            <td>S/ 6.00</td>
                            <td><button class="btn btn-danger btn-sm">Eliminar</button></td>
                        </tr>
                         <tr>
                            <td>Ejemplo: Rack para crioviales</td>
                            <td>1</td>
                            <td>S/ 32.00</td>
                            <td>S/ 32.00</td>
                            <td><button class="btn btn-danger btn-sm">Eliminar</button></td>
                        </tr>
                    </tbody>
                </table>
                <button class="btn btn-secondary">Añadir Producto</button>
            </fieldset>

            <!-- Total y Acciones -->
            <div class="d-flex justify-content-end align-items-center mt-4">
                <h3 class="me-3">Total: <span id="total-venta">S/ 38.00</span></h3>
                <button type="submit" form="cliente-form" class="btn btn-success btn-lg">Generar Documento</button>
            </div>
        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>

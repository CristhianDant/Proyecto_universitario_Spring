<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <h2>Documento de Venta: ${serie}-${numero}</h2>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- Columna Izquierda: Datos del Cliente -->
                <div class="col-lg-7">
                    <fieldset class="border p-3 mb-4">
                        <legend class="w-auto px-2">Datos del Cliente</legend>
                        <form id="cliente-form">
                            <div class="mb-3">
                                <label for="razon_social" class="form-label">Razón Social</label>
                                <input type="text" class="form-control" id="razon_social" name="razon_social" required>
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
                </div>

                <!-- Columna Derecha: Resumen de Pedido -->
                <div class="col-lg-5">
                    <fieldset class="border p-3">
                        <legend class="w-auto px-2">Resumen de pedido</legend>
                        <table class="table table-striped table-hover">
                            <thead class="table-dark">
                                <tr>
                                    <th>Producto</th>
                                    <th>Cantidad</th>
                                    <th>Precio</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody id="detalle-venta-body">
                                <!-- Las filas de productos se agregarán aquí dinámicamente desde el carrito -->
                            </tbody>
                        </table>
                        <!-- Total y Acciones -->
                        <div class="d-flex justify-content-end align-items-center mt-4">
                            <h3 class="me-3">Total: <span id="total-venta">S/ 38.00</span></h3>
                        </div>
                    </fieldset>
                </div>
            </div>
            <div class="text-center mt-4">
                 <button type="submit" form="cliente-form" class="btn btn-success btn-lg">Generar Documento</button>
            </div>
        </div>
    </div>
</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/extracion_de_carito.js"></script>
</body>
</html>

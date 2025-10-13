<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>BiogenicsLab - Dashboard</title>
    <jsp:include page="estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">
</head>
<body>
    <jsp:include page="estructura/header.jsp" />
    <div class="d-flex">
        <jsp:include page="estructura/aside.jsp" />
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-lg-8">
                    <div class="card mb-4">
                        <div class="card-header">
                            Productos Mas Vendidos
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Producto</th>
                                        <th>Ventas (Unidades)</th>
                                        <th>Monto</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Agar Bacteriologico</td>
                                        <td>BioGetorias Alfa</td>
                                        <td>13,750</td>
                                    </tr>
                                    <tr>
                                        <td>Agar Baclercil 1182grm</td>
                                        <td>Universidad Nclona</td>
                                        <td>22,400</td>
                                    </tr>
                                    <tr>
                                        <td>Placas de Petti (100mm)</td>
                                        <td>Universidad Nacional</td>
                                        <td>1,500</td>
                                    </tr>
                                    <tr>
                                        <td>Tubos de Centrifuga (50ml)</td>
                                        <td>Thermo</td>
                                        <td>95,950</td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#">Ver todos los productos Top</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            Actividad Reciente
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Usuario</th>
                                        <th>Accion</th>
                                        <th>Detalle</th>
                                        <th>Fecha/Hora</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Admin. Maria P.</td>
                                        <td>Actualizo precio de Granulado</td>
                                        <td>ID (junizo devda (05ml)</td>
                                        <td>Recorriado</td>
                                    </tr>
                                    <tr>
                                        <td>Cliente Pedro R.</td>
                                        <td>Relirilizo to ulle enviado</td>
                                        <td>ID 20223 828 26 1430</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#">Ver todo l registro de actividad</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card mb-4">
                        <div class="card-header">
                            Ordenes de Venta Pendientes
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID Pedido</th>
                                        <th>Fecha Pedido</th>
                                        <th>Total($)</th>
                                        <th>Accion</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#001234</td>
                                        <td>Laboratorias Alfa</td>
                                        <td>1,200.00</td>
                                        <td><a href="#" class="btn btn-sm btn-outline-primary">Ver Detalles</a></td>
                                    </tr>
                                    <tr>
                                        <td>Pendiente Nacional</td>
                                        <td></td>
                                        <td>350.50</td>
                                        <td>Recordaido</td>
                                    </tr>
                                    <tr>
                                        <td>Clinica del Valle</td>
                                        <td>Nuvo Pedido</td>
                                        <td></td>
                                        <td><a href="#" class="btn btn-sm btn-outline-primary">Ver Detallio</a></td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="#">Ver todos los documentos de venta pendientes</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            Alertas y Notificaciones
                        </div>
                        <div class="card-body">
                            <ul>
                                <li>¡Alerta! Stock bajo para "Medio de de Sabonulabab" (5 unidads reniiades restentes) <a href="#">Gestionar Inventario</a></li>
                                <li>Comerlento Nuevo en Prodiacion: Cliente Sol", has: sosiatado o cicidi par. Ver Solicitad <a href="#">Gestionairo</a></li>
                                <li>"Moderar Comentantio"</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

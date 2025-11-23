<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>BiogenicsLab - Productos</title>

    <jsp:include page="estructura/head_estructura.jsp" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">

  </head>
  <body>
    <jsp:include page="estructura/header.jsp" />
    <div class="d-flex">
        <jsp:include page="estructura/aside.jsp" />
        <main class="container-fluid py-4">
          <h1 class="text-center mb-4">Gestión de Productos</h1>

          <div class="card">
            <div class="card-header">
              Formulario de Producto
            </div>
            <div class="card-body">
              <form id="product-form">
                <input type="hidden" id="product-id">
                <div class="mb-3">
                  <label for="product-name" class="form-label">Nombre del Producto</label>
                  <input type="text" class="form-control" id="product-name" required>
                </div>
                <div class="mb-3">
                  <label for="product-description" class="form-label">Descripción</label>
                  <textarea class="form-control" id="product-description" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                  <label for="product-price" class="form-label">Precio</label>
                  <input type="number" class="form-control" id="product-price" step="0.01" required>
                </div>
                <div class="mb-3">
                  <label for="product-image" class="form-label">URL de la Imagen</label>
                  <input type="url" class="form-control" id="product-image" required>
                </div>
                <button type="submit" class="btn btn-primary">Guardar Producto</button>
                <button type="button" class="btn btn-secondary" id="cancel-edit" style="display:none;">Cancelar Edición</button>
              </form>
            </div>
          </div>

          <div class="card mt-4">
            <div class="card-header">
              Lista de Productos
            </div>
            <div class="card-body">
              <form action="${pageContext.request.contextPath}/productos/" method="get" class="mb-3">
                <div class="row align-items-end">
                  <div class="col-md-4">
                    <label for="marca-filter" class="form-label">Filtrar por Marca:</label>
                    <select name="marca" id="marca-filter" class="form-select">
                      <option value="TODAS" ${'TODAS' == marcaSeleccionada || marcaSeleccionada == null ? 'selected' : ''}>Todas las Marcas</option>
                      <c:forEach items="${marcas}" var="marca">
                        <option value="${marca}" ${marca == marcaSeleccionada ? 'selected' : ''}>${marca}</option>
                      </c:forEach>
                    </select>
                  </div>
                  <div class="col-md-2">
                    <button type="submit" class="btn btn-info w-100">Filtrar</button>
                  </div>
                </div>
              </form>

              <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Código</th>
                    <th scope="col">Descripción</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Marca</th>
                    <th scope="col">Vencimiento</th>
                    <th scope="col">Acciones</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${productos}" var="producto">
                    <tr>
                      <td>${producto.idProducto}</td>
                      <td>${producto.codProducto}</td>
                      <td>${producto.descripcion}</td>
                      <td>${producto.cantidad}</td>
                      <td>${producto.marca}</td>
                      <td>${producto.vencimiento}</td>
                      <td>
                        <button class="btn btn-sm btn-primary">Editar</button>
                        <button class="btn btn-sm btn-danger">Eliminar</button>
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </main>
    </div>
    <jsp:include page="estructura/scripts_estructura.jsp" />
  </body>
</html>

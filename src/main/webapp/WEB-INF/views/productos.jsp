<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>BiogenicsLab - Productos</title>

    <jsp:include page="estructura/head_estructura.jsp" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">

  </head>
  <body>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <defs>
        <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
          <path fill="currentColor" d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
          <path fill="currentColor" d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z"/>
        </symbol>
      </defs>
    </svg>

    <jsp:include page="estructura/header.jsp" />

    <main class="container mt-5">
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

    <footer class="py-5 mt-5">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6 copyright">
            <p>© 2025 BiogenicsLab. Todos los derechos reservados.</p>
          </div>
          <div class="col-md-6 credit-link text-start text-md-end">
            <p>Free HTML Template by <a href="https://templatesjungle.com/">TemplatesJungle</a> Distributed by <a href="https://themewagon">ThemeWagon</a></p>
          </div>
        </div>
      </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/productos.js"></script>
  </body>
</html>

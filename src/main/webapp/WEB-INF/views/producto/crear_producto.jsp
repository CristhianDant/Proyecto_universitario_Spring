<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <title>BiogenicsLab - Crear Producto</title>

    <jsp:include page="../estructura/head_estructura.jsp" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productos.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">

  </head>
  <body>
    <jsp:include page="../estructura/header.jsp" />
    <div class="d-flex">
        <jsp:include page="../estructura/aside.jsp" />
        <main class="container-fluid py-4">
          <h1 class="text-center mb-4">Crear Producto</h1>

          <!-- Formulario para crear nuevo producto -->
          <div class="card">
              <div class="card-header">Nuevo Producto</div>
              <div class="card-body">
                  <form action="${pageContext.request.contextPath}/productos/guardar" method="post" enctype="multipart/form-data">
                      <div class="mb-3">
                          <label for="nombreProducto" class="form-label">Nombre del Producto</label>
                          <input type="text" class="form-control" id="nombreProducto" name="nombreProducto" required>
                      </div>
                      <div class="mb-3">
                          <label for="descripcion" class="form-label">Descripción</label>
                          <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required></textarea>
                      </div>
                      <div class="mb-3">
                          <label for="precio" class="form-label">Precio</label>
                          <input type="number" class="form-control" id="precio" name="precio" step="0.01" required>
                      </div>
                      <div class="mb-3">
                          <label for="idMarca" class="form-label">Marca</label>
                          <input type="text" list="marcas" class="form-control" id="idMarca" name="idMarca" required>
                          <datalist id="marcas">
                              <c:forEach var="marca" items="${marcasActivas}">
                                  <option value="${marca.idMarca}">${marca.nombreMarca}</option>
                              </c:forEach>
                          </datalist>
                      </div>
                      <div class="mb-3">
                          <label for="linkImageu" class="form-label">Imagen del Producto</label>
                          <input type="file" class="form-control" id="linkImageu" name="linkImageu" accept="image/png, image/jpeg" required>
                      </div>
                      <button type="submit" class="btn btn-primary">Crear Producto</button>
                      <a href="${pageContext.request.contextPath}/productos/" class="btn btn-secondary">Volver al Listado</a>
                  </form>
              </div>
          </div>
        </main>
    </div>
  </body>
</html>

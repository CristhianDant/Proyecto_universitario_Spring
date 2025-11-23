<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <title>BiogenicsLab - Crear Marca</title>

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
          <h1 class="text-center mb-4">Crear Marca</h1>
          <c:if test="${not empty mensaje}"><div class="alert alert-danger">${mensaje}</div></c:if>

          <!-- Formulario para crear nueva marca -->
          <div class="card">
              <div class="card-header">Nueva Marca</div>
              <div class="card-body">
                  <form action="${pageContext.request.contextPath}/marcas/guardar" method="post" enctype="multipart/form-data">
                      <div class="mb-3">
                          <label for="nombreMarca" class="form-label">Nombre de la Marca</label>
                          <input type="text" class="form-control" id="nombreMarca" name="nombreMarca" required>
                      </div>
                      <div class="mb-3">
                          <label for="procedencia" class="form-label">Procedencia</label>
                          <input type="text" class="form-control" id="procedencia" name="procedencia" required>
                      </div>
                      <div class="mb-3">
                          <label for="descripcion" class="form-label">Descripción</label>
                          <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required></textarea>
                      </div>
                      <div class="mb-3">
                          <label for="linkImageu" class="form-label">Imagen de la Marca</label>
                          <input type="file" class="form-control" id="linkImageu" name="linkImageu" accept="image/webp" required>
                      </div>
                      <button type="submit" class="btn btn-primary">Crear Marca</button>
                      <a href="${pageContext.request.contextPath}/marcas/" class="btn btn-secondary">Volver al Listado</a>
                  </form>
              </div>
          </div>
        </main>
    </div>
  </body>
</html>

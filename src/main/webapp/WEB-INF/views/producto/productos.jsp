<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <title>BiogenicsLab - Productos</title>

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
          <h1 class="text-center mb-4">Gestión de Productos</h1>

          <div class="mb-3">
              <a href="${pageContext.request.contextPath}/productos/crear" class="btn btn-success">Crear Nuevo Producto</a>
          </div>

          <!-- Listado de productos -->
          <div class="card mt-4">
              <div class="card-header">Listado de Productos</div>
              <div class="card-body">
                  <c:if test="${not empty mensaje}">
                      <div class="alert alert-info">${mensaje}</div>
                  </c:if>
                  <table class="table">
                      <thead>
                          <tr>
                              <th>ID</th>
                              <th>Nombre</th>
                              <th>Descripción</th>
                              <th>Precio</th>
                              <th>Marca</th>
                              <th>Anulado</th>
                              <th>Imagen</th>
                              <th>Acciones</th>
                          </tr>
                      </thead>
                      <tbody>
                          <c:forEach var="producto" items="${productos}">
                              <tr>
                                  <td>${producto.id_producto}</td>
                                  <td>${producto.nombre_producto}</td>
                                  <td>${producto.descripcion}</td>
                                  <td>${producto.precio}</td>
                                  <td>${producto.nombre_marca}</td>
                                  <td>${producto.anulado ? 'Sí' : 'No'}</td>
                                  <td>
                                      <img src="${pageContext.request.contextPath}${producto.link_imaguen}" alt="${producto.nombre_producto}" style="max-width: 50px; max-height: 50px;">
                                  </td>
                                  <td>
                                      <a href="${pageContext.request.contextPath}/productos/editar/${producto.id_producto}" class="btn btn-sm btn-warning">Editar</a>
                                  </td>
                              </tr>
                          </c:forEach>
                          <c:if test="${empty productos}">
                              <tr>
                                  <td colspan="8" class="text-center">No hay productos registrados</td>
                              </tr>
                          </c:if>
                      </tbody>
                  </table>
              </div>
          </div>
        </main>
    </div>
  </body>
</html>

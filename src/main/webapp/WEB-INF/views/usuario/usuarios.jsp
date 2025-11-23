<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <title>BiogenicsLab - Gestión de Usuarios</title>

    <jsp:include page="../estructura/head_estructura.jsp" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dashboard.css">

  </head>
  <body>
    <jsp:include page="../estructura/header.jsp" />
    <div class="d-flex">
        <jsp:include page="../estructura/aside.jsp" />
        <main class="container-fluid py-4">
          <h1 class="text-center mb-4">Gestión de Usuarios</h1>

          <!-- Listado de usuarios -->
          <div class="card mt-4">
              <div class="card-header">Listado de Usuarios</div>
              <div class="card-body">
                  <c:if test="${not empty mensaje}">
                      <div class="alert alert-info">${mensaje}</div>
                  </c:if>
                  <table class="table">
                      <thead>
                          <tr>
                              <th>ID</th>
                              <th>Username</th>
                              <th>Email</th>
                              <th>RUC/DNI</th>
                              <th>Teléfono</th>
                              <th>Dirección Fiscal</th>
                              <th>Superuser</th>
                              <th>Anulado</th>
                              <th>Acciones</th>
                          </tr>
                      </thead>
                      <tbody>
                          <c:forEach var="usuario" items="${usuarios}">
                              <tr>
                                  <td>${usuario.id_user}</td>
                                  <td>${usuario.username}</td>
                                  <td>${usuario.email}</td>
                                  <td>${usuario.ruc_dni_cliente}</td>
                                  <td>${usuario.telefono}</td>
                                  <td>${usuario.direcccion_fiscal}</td>
                                  <td>${usuario.superuser ? 'Sí' : 'No'}</td>
                                  <td>${usuario.anulado ? 'Sí' : 'No'}</td>
                                  <td>
                                      <a href="${pageContext.request.contextPath}/usuario/editar/${usuario.id_user}" class="btn btn-sm btn-warning">Editar</a>
                                  </td>
                              </tr>
                          </c:forEach>
                          <c:if test="${empty usuarios}">
                              <tr>
                                  <td colspan="9" class="text-center">No hay usuarios registrados</td>
                              </tr>
                          </c:if>
                      </tbody>
                  </table>
              </div>
          </div>
        </main>
    </div>
    <jsp:include page="../estructura/scripts_estructura.jsp" />
  </body>
</html>

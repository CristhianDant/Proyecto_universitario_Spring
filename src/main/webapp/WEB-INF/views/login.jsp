<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Login - BiogenicsLab</title>
    <jsp:include page="estructura/head_estructura.jsp" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body class="d-flex flex-column min-vh-100">



<div class="preloader-wrapper">
    <div class="preloader">
    </div>
</div>

<jsp:include page="estructura/header.jsp" />

<main class="flex-grow-1 d-flex align-items-center" style="background-image: url('${pageContext.request.contextPath}/img/background-pattern.webp');background-repeat: no-repeat;background-size: cover;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-20 col-lg-12">
                <div class="card shadow-lg border-0 rounded-lg">
                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Iniciar Sesión</h3></div>
                    <div class="card-body">
                        <div id="error-div"></div>
                        <form id="login-form">
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" name="email" type="email" placeholder="Email" required />
                                <label for="email">Email</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="password" name="password" type="password" placeholder="Contraseña" required />
                                <label for="password">Contraseña</label>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                <a class="small" href="#">¿Olvidaste tu contraseña?</a>
                                <button class="btn btn-primary" type="submit">Ingresar</button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center py-3">
                        <div class="small"><a href="${pageContext.request.contextPath}/usuario/reguistar_usuario">¿Necesitas una cuenta? ¡Regístrate!</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>

</body>
</html>
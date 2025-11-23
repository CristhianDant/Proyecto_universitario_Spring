<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Novedades - BiogenicsLab</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

  <header>
    <div class="logo-container">
    <img src="${pageContext.request.contextPath}/img/logo biog.webp" alt="FoodMart Logo" class="logo">
        <h1> </h1>

  </div>
    <nav>
      <ul class="navbar-nav">
        <li><a href="/">Inicio</a></li>
        <li><a href="/empresa">Nuestra Empresa</a></li>
        <li><a href="/blog">Blog</a></li>
        <li><a href="/novedades">Novedades</a></li>
        <li><a href="/sale">Sale</a></li>
        <li><a href="/contacto">Contáctanos</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <h2>Novedades</h2>
    <p>Descubre los nuevos productos y lanzamientos disponibles en nuestra tienda.</p>
    <section class="slider-novedades">
  <h2 class="titulo-slider">Novedades Recientes</h2>
  <div class="slider-container">
    <button class="slider-btn left" onclick="moverSlide(-1)">❮</button>

    <div class="slider" id="slider">
      <div class="slide">
        <img src="${pageContext.request.contextPath}/images/balanza.wepb" alt="Novedad 1">
        <h3>Nuevo producto Balanza Analitica</h3>
        <p>Una balanza analítica es una báscula que mide masa con un alto grado de precisión. Típicamente tienen un rango de pesaje entre los 100 y los 300 g, y una lectura de 0,1 mg (4 decimales), 
            de 0,01 mg (5 decimales, también denominada balanza semi-micro) o de 0,001 mg (6 decimales, también denominada micro balanza).</p>
      </div>
      <div class="slide">
        <img src="${pageContext.request.contextPath}/img/kits.wepb" alt="Novedad 2">
        <h3>Promoción de Julio</h3>
        <p>Durante este mes, aprovecha un 20% de descuento en todos los kits de laboratorio.</p>
      </div>
      <div class="slide">
        <img src="${pageContext.request.contextPath}/images/multiparametro.webp" alt="Novedad 3">
        <h3>Recien Llegado</h3>
        <p>El medidor multiparametro o multiparametrico, mide parámetros fisicoquímicos del agua. Tiene múltiples aplicaciones,
             entre ellas el monitoreo de ríos, lagos, pantanos, así como también, plantas de tratamiento de aguas..</p>
      </div>
    </div>

    <button class="slider-btn right" onclick="moverSlide(1)">❯</button>
  </div>
</section>

  </main>

  <footer>
    <p>&copy; 2025 BiogenicsLab - Todos los derechos reservados</p>
  </footer>
<script>
  let slideIndex = 0;

  function moverSlide(n) {
    const slider = document.getElementById('slider');
    const slides = slider.children.length;

    slideIndex += n;

    if (slideIndex < 0) slideIndex = slides - 1;
    if (slideIndex >= slides) slideIndex = 0;

    slider.style.transform = 'translateX(' + (-slideIndex * 100) + '%)';
  }

  // Opcional: autoplay cada 5 segundos
  setInterval(() => moverSlide(1), 5000);
</script>

</body>
</html>

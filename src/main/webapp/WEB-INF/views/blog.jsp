<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Blog - BiogenicsLab</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

  <header>
    <div class="logo-container">
    <img src="${pageContext.request.contextPath}/img/logo biog.png" alt="FoodMart Logo" class="logo">
    <h1> </h1>
  </div>
    <nav>
      <ul class="navbar-nav">
        <li><a href="/index">Inicio</a></li>
        <li><a href="/empresa">Nuestra Empresa</a></li>
        <li><a href="/blog">Blog</a></li>
        <li><a href="/novedades">Novedades</a></li>
        <li><a href="/sale">Sale</a></li>
        <li><a href="/contacto">Contáctanos</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <h2>Blog</h2>
    <p>Lee nuestras novedades, consejos y artículos sobre ciencia, salud y tecnología.</p>
    <main>
  <section id="latest-blog" class="py-5">
    <div class="container-fluid">

      <!-- Encabezado de la sección -->
      <div class="row">
        <div class="section-header d-flex align-items-center justify-content-between my-5">
          <h2 class="section-title">Nuestro Blog Reciente</h2>
          <div class="btn-wrap">
            <a href="#" class="d-flex align-items-center nav-link">
              Leer todos los artículos
              <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg>
            </a>
          </div>
        </div>
      </div>

      <!-- Publicaciones del blog -->
      <div class="row">

        <!-- Artículo 1 -->
        <div class="col-md-4">
          <article class="post-item card border-0 shadow-sm p-3">
            <div class="image-holder zoom-effect">
              <a href="#">
                <img src="${pageContext.request.contextPath}/images/gaza.1.png" alt="Gaza noticia" class="card-img-top">
              </a>
            </div>
            <div class="card-body">
              <div class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
                <div class="meta-date">
                  <svg width="16" height="16"><use xlink:href="#calendar"></use></svg>
                  07 de julio 2025
                </div>
                <div class="meta-categories">
                  <svg width="16" height="16"><use xlink:href="#category"></use></svg>
                  Consejos y Trucos
                </div>
              </div>
              <div class="post-header">
                <h3 class="post-title">
                  <a href="#" class="text-decoration-none">
                    Habitantes de Gaza relatan a la BBC las torturas que sufrieron durante su detención en Israel
                  </a>
                </h3>
                <p>
                  Entrevistas a cinco detenidos excarcelados en Gaza tras los ataques de Hamás. Relatan abuso y tortura por parte de las autoridades israelíes.
                </p>
              </div>
            </div>
          </article>
        </div>

        <!-- Artículo 2 -->
        <div class="col-md-4">
          <article class="post-item card border-0 shadow-sm p-3">
            <div class="image-holder zoom-effect">
              <a href="#">
                <img src="${pageContext.request.contextPath}/images/alumna.unmsm.png" alt="Astronauta peruana" class="card-img-top">
              </a>
            </div>
            <div class="card-body">
              <div class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
                <div class="meta-date">
                  <svg width="16" height="16"><use xlink:href="#calendar"></use></svg>
                  08 de julio 2025
                </div>
                <div class="meta-categories">
                  <svg width="16" height="16"><use xlink:href="#category"></use></svg>
                  Novedades
                </div>
              </div>
              <div class="post-header">
                <h3 class="post-title">
                  <a href="#" class="text-decoration-none">
                    Ingeniera de San Marcos será la primera astronauta análoga peruana en programa de élite mundial
                  </a>
                </h3>
                <p>
                  Una joven peruana fue seleccionada entre 21 del mundo para representar al Perú en un programa espacial internacional de alto nivel.
                </p>
              </div>
            </div>
          </article>
        </div>

        <!-- Artículo 3 -->
        <div class="col-md-4">
          <article class="post-item card border-0 shadow-sm p-3">
            <div class="image-holder zoom-effect">
              <a href="#">
                <img src="${pageContext.request.contextPath}/images/medifarma.png" alt="Medifarma" class="card-img-top">
              </a>
            </div>
            <div class="card-body">
              <div class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
                <div class="meta-date">
                  <svg width="16" height="16"><use xlink:href="#calendar"></use></svg>
                  28 ago 2021
                </div>
                <div class="meta-categories">
                  <svg width="16" height="16"><use xlink:href="#category"></use></svg>
                  Inspiration
                </div>
              </div>
              <div class="post-header">
                <h3 class="post-title">
                  <a href="#" class="text-decoration-none">
                    Se frustra diligencia a instalaciones de la planta del laboratorio de Medifarma
                  </a>
                </h3>
                <p>
                  La diligencia fue suspendida por falta de equipos técnicos por parte de Digemid, afectando la investigación del fallecimiento de una paciente.
                </p>
              </div>
            </div>
          </article>
        </div>

      </div>
    </div>
  </section>
</main>

  </main>


  <footer>
    <p>&copy; 2025 FoodMart - Todos los derechos reservados</p>
  </footer>

</body>
</html>
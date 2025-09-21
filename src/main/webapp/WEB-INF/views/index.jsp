<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>BiogenicsLab - Material y equipos de Laboratorio</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/carrito.js"></script>

  </head>
  <body>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <defs>
        <symbol xmlns="http://www.w3.org/2000/svg" id="link" viewBox="0 0 24 24">
          <path fill="currentColor" d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
          <path fill="currentColor" d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="category" viewBox="0 0 24 24">
          <path fill="currentColor" d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
          <path fill="currentColor" d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
          <path fill="currentColor" d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
          <path fill="currentColor" d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
          <path fill="currentColor" d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 24 24">
          <path fill="currentColor" d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="check" viewBox="0 0 24 24">
          <path fill="currentColor" d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="trash" viewBox="0 0 24 24">
          <path fill="currentColor" d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-outline" viewBox="0 0 15 15">
          <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-solid" viewBox="0 0 15 15">
          <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
          <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
          <path fill="currentColor" d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z"/>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 15 15">
          <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"/>
        </symbol>
      </defs>
    </svg>

    <div class="preloader-wrapper">
      <div class="preloader">
      </div>
    </div>
<!-- CARRITO -->
<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasCart" aria-labelledby="MyCartLabel">
  <div class="offcanvas-header justify-content-between">
    <h5 class="offcanvas-title text-primary" id="MyCartLabel">🛒 Tu carrito</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>

  <div class="offcanvas-body">
    <ul class="list-group mb-3" id="carrito-lista">
      <!-- JS llena productos -->
    </ul>

    <!-- Botón 1: Mostrar formulario -->
    <button id="btn-finalizar-compra" class="btn btn-primary w-100 mb-3">
      Comprar
    </button>

    <!-- Formulario oculto -->
    <div id="formulario-compra" style="display: none;">
      <h5 class="text-center">📋 Datos del Cliente</h5>
      <form id="form-compra">
        <input type="text" class="form-control mb-2" name="apellidos" placeholder="Apellidos" required>
        <input type="text" class="form-control mb-2" name="nombres" placeholder="Nombres" required>
        <input type="text" class="form-control mb-2" name="dni" placeholder="DNI" required>
        <input type="email" class="form-control mb-2" name="correo" placeholder="Correo electrónico" required>
        <input type="text" class="form-control mb-2" name="direccion" placeholder="Dirección" required>
        <input type="text" class="form-control mb-2" name="telefono" placeholder="Teléfono" required>
        <div class="alert alert-info text-center" id="total-compra"></div>
        <button type="submit" class="btn btn-success w-100">Finalizar compra</button>
      </form>
    </div>
  </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
<script src="carrito.js"></script>



    
    <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasSearch" aria-labelledby="Search">
      <div class="offcanvas-header justify-content-center">
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <div class="order-md-last">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-primary">Search</span>
          </h4>
          <form role="search" action="/" method="get" class="d-flex mt-3 gap-0">
            <input class="form-control rounded-start rounded-0 bg-light" type="email" placeholder="What are you looking for?" aria-label="What are you looking for?">
            <button class="btn btn-dark rounded-end rounded-0" type="submit">Search</button>
          </form>
        </div>
      </div>
    </div>


    <jsp:include page="estructura/header.jsp" />


    
    <section class="py-3" style="background-image: url('img/background-pattern.jpg');background-repeat: no-repeat;background-size: cover;">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">

            <div class="banner-blocks">
            
              <div class="banner-ad large bg-info block-1">

                <div class="swiper main-swiper">
                  <div class="swiper-wrapper">
                    
                    <div class="swiper-slide">
                      <div class="row banner-content p-5">
                        <div class="content-wrapper col-md-7">
                          <div class="categories my-3">Deshidratados</div>
                          <h3 class="display-4">YPD Broth Base Granulado</h3>
                          <p>Para el crecimiento de Saccharomyces cerevisiae, usado en biología molecular.</p>
                          <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 px-4 py-3 mt-3">Comprar Ahora</a>
                        </div>
                        <div class="img-wrapper col-md-5">
                          <img src="${pageContext.request.contextPath}/img/gm1363-500g.png" class="img-fluid">
                        </div>
                      </div>
                    </div>
                    
                    <div class="swiper-slide">
                      <div class="row banner-content p-5">
                        <div class="content-wrapper col-md-7">
                          <div class="categories mb-3 pb-3">100% Autoclavable</div>
                          <h3 class="banner-title">Micropipeta Electronica Dpette</h3>
                          <p>Uno de los instrumentos más utilizados en aplicaciones biológicas y médicas.</p>
                          <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Ver Modelos</a>
                        </div>
                        <div class="img-wrapper col-md-5">
                          <img src="${pageContext.request.contextPath}/img/dlab-dpette-micropipeta-electronica.png" class="img-fluid">
                        </div>
                      </div>
                    </div>
                    
                    <div class="swiper-slide">
                      <div class="row banner-content p-5">
                        <div class="content-wrapper col-md-7">
                          <div class="categories mb-3 pb-3">Polipropileno Alta Calidad</div>
                          <h3 class="banner-title">Gradillas de Laboratorio</h3>
                          <p>Contamos con las Mejores gradillas del mercado, en los tamaños de 15 y 50 ml.</p>
                          <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Ver Modelos</a>
                        </div>
                        <div class="img-wrapper col-md-5">
                          <img src="${pageContext.request.contextPath}/img/gradilla-50ml.png" class="img-fluid">
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="swiper-pagination"></div>

                </div>
              </div>
              
              <div class="banner-ad bg-success-subtle block-2" style="background:url('img/medios-10%dscto.png') no-repeat;background-position: right bottom">
                <div class="row banner-content p-5">

                  <div class="content-wrapper col-md-7">
                    <div class="categories sale mb-3 pb-3">Descuento 10%</div>
                    <h3 class="banner-title">Medios de cultivo</h3>
                    <a href="#" class="d-flex align-items-center nav-link">Ver modelos <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg></a>
                  </div>

                </div>
              </div>

              <div class="banner-ad bg-danger block-3" style="background:url('img/microscopio-5%dscto.png') no-repeat;background-position: right bottom">
                <div class="row banner-content p-5">

                  <div class="content-wrapper col-md-7">
                    <div class="categories sale mb-3 pb-3">Descuento 5%</div>
                    <h3 class="item-title">Equipos de Laboratorio</h3>
                    <a href="#" class="d-flex align-items-center nav-link">Ver Modelos <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg></a>
                  </div>

                </div>
              </div>

            </div>
            <!-- / Banner Blocks -->
              
          </div>
        </div>
      </div>
    </section>

    <section class="py-5 overflow-hidden">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">

            <div class="section-header d-flex flex-wrap justify-content-between mb-5">
              <h2 class="section-title">Categorias</h2>

              <div class="d-flex align-items-center">
                <a href="#" class="btn-link text-decoration-none">Ver Todas las Categorias →</a>
                <div class="swiper-buttons">
                  <button class="swiper-prev category-carousel-prev btn btn-yellow">❮</button>
                  <button class="swiper-next category-carousel-next btn btn-yellow">❯</button>
                </div>
              </div>
            </div>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">

            <div class="category-carousel swiper">
              <div class="swiper-wrapper">
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/microscope.png" width="40" height="40" alt="Category Thumbnail">
                  <h3 class="category-title">Equipos de laboratorio</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/test.png" width="40" height="40" alt="Category Thumbnail">
                  <h3 class="category-title">Reactivos Quimicos</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/blood-test.png" width="40" height="40" alt="Category Thumbnail">
                  <h3 class="category-title">Medios de Cultivo</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/enzyme.png" width="40" height="40" alt="Category Thumbnail">
                  <h3 class="category-title">Colorante de Laboratorio</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/material-de-laboratorio.png" alt="Category Thumbnail">
                  <h3 class="category-title">Material de Laboratorio</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/kits-de-extraccion.png" alt="Category Thumbnail">
                  <h3 class="category-title">Kits de extracción</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/fragancia.png" alt="Category Thumbnail">
                  <h3 class="category-title">Fragancias</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/reactivos-usp.png" alt="Category Thumbnail">
                  <h3 class="category-title">Reactivos USP</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/alcoholes.png" alt="Category Thumbnail">
                  <h3 class="category-title">Alcoholes</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/biologia-molecular.png" alt="Category Thumbnail">
                  <h3 class="category-title">Biologia Molecular</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/cultvo-celular.png" alt="Category Thumbnail">
                  <h3 class="category-title">Cultivo Celular</h3>
                </a>
                <a href="/" class="nav-link category-item swiper-slide">
                  <img src="${pageContext.request.contextPath}/img/cultivo-vegetal.png" alt="Category Thumbnail">
                  <h3 class="category-title">Cultivo Vegetal</h3>
                </a>
                
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>


    <section class="py-5 overflow-hidden">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">

            <div class="section-header d-flex flex-wrap flex-wrap justify-content-between mb-5">
              
              <h2 class="section-title">Marcas Recién llegadas</h2>

              <div class="d-flex align-items-center">
                <a href="#" class="btn-link text-decoration-none">Ver todas las marcas</a>
                <div class="swiper-buttons">
                  <button class="swiper-prev brand-carousel-prev btn btn-yellow">❮</button>
                  <button class="swiper-next brand-carousel-next btn btn-yellow">❯</button>
                </div>  
              </div>
            </div>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">

            <div class="brand-carousel swiper">
              <div class="swiper-wrapper">
                
                <div class="swiper-slide">
                  <div class="card mb-3 p-3 rounded-4 shadow border-0">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/img/radwag-logo.png" class="img-fluid rounded" alt="Card title">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body py-0">
                          <p class="text-muted mb-0">Radwag</p>
                          <h5 class="card-title">El mayor fabricante de balanzas del mundo</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="card mb-3 p-3 rounded-4 shadow border-0">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/img/Merck-logo.png" class="img-fluid rounded" alt="Card title">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body py-0">
                          <p class="text-muted mb-0">Merck Millipore</p>
                          <h5 class="card-title">La marca más importante de latinoamérica en reactivos</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="card mb-3 p-3 rounded-4 shadow border-0">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/img/Himedia-logo.jpg" class="img-fluid rounded" alt="Card title">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body py-0">
                          <p class="text-muted mb-0">Himedia Laboratories</p>
                          <h5 class="card-title">El representante Hindú con más ventas de medios en el mundo</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="card mb-3 p-3 rounded-4 shadow border-0">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/img/isolab-logo.png" class="img-fluid rounded" alt="Card title">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body py-0">
                          <p class="text-muted mb-0">Isolab</p>
                          <h5 class="card-title">El gigante alemán se suma a nuestro catálogo de marcas</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="card mb-3 p-3 rounded-4 shadow border-0">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/img/tarsons-logo.jpg" class="img-fluid rounded" alt="Card title">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body py-0">
                          <p class="text-muted mb-0">Tarsons</p>
                          <h5 class="card-title">Una de las marcas top de la India en material de plásticos</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="card mb-3 p-3 rounded-4 shadow border-0">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/img/biobase-logo.jpg" class="img-fluid rounded" alt="Card title">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body py-0">
                          <p class="text-muted mb-0">Biobase</p>
                          <h5 class="card-title">Uno de los fabricantes más grandes de China en equipo médico</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>


    <section class="py-5">
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-md-12">

            <div class="bootstrap-tabs product-tabs">
              <div class="tabs-header d-flex justify-content-between border-bottom my-5">
                <h3>Materiales en Tendencia</h3>
                <nav>
                  <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a href="#" class="nav-link text-uppercase fs-6 active" id="nav-all-tab" data-bs-toggle="tab" data-bs-target="#nav-all">Todos</a>
                    <a href="#" class="nav-link text-uppercase fs-6" id="nav-fruits-tab" data-bs-toggle="tab" data-bs-target="#nav-fruits">Materiales </a>
                    <a href="#" class="nav-link text-uppercase fs-6" id="nav-juices-tab" data-bs-toggle="tab" data-bs-target="#nav-juices">Equipos</a>
                  </div>
                </nav>
              </div>
              <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">

                  <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                  
                    <div class="col">
                      <div class="product-item">
                        <span class="badge bg-success position-absolute m-3">-30%</span>
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/asa de siembra.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Asa de Siembra</h3>
                        <span class="qty">Paq x 10 und</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.2</span>
                        <span class="price">S/3.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <span class="badge bg-success position-absolute m-3">-30%</span>
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/rack.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Rack para crioviales</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.9</span>
                        <span class="price">S/32.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>            
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/CRIOVIALES-AUTO-SOSTENIBLES-GRADUADOS-DE-2-mL.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Crioviales</h3>
                        <span class="qty">Paq x 100 und</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.7</span>
                        <span class="price">S/100.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                           </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/estufa.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Estufa de Laboratorio</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.8</span>
                        <span class="price">S/7900.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/tubo.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Tubo de ensayo</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.4</span>
                        <span class="price">S/2.50</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/macconkey-agar.png"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Agar Mac conkey</h3>
                        <span class="qty">Frasco x 500g</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/250.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/tamiz-de-laboratorio.png"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Tamiz de 5 pulgadas</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/120.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                        
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/escurridor-de-laboratorio.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Escurridor de Laboratorio</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/450.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                  
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/carboy-de-laboratorio.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Carboy de 20 LT</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/350.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                        
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/matraz-de-vidrio.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Matraz de vidrio de 500 ml</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/22.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                        
                          </div>
                      </div>
                    </div>

                  </div>
                  <!-- / product-grid -->
                  
                </div>

                <div class="tab-pane fade" id="nav-fruits" role="tabpanel" aria-labelledby="nav-fruits-tab">
                  
                  <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">

                    <div class="col">
                      <div class="product-item">
                        <span class="badge bg-success position-absolute m-3">-30%</span>
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/embudo-de-vidrio.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Embudo de vidrio de 100mm</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/32.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                       
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <span class="badge bg-success position-absolute m-3">-30%</span>
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/rack-microtubos.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Rack para microtubos de 1.5ml</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/25.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>               
                          </div>
                      </div>
                    </div>
                  
                    <div class="col">
                      <div class="product-item">
                        <span class="badge bg-success position-absolute m-3">-30%</span>
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/tubos-criogenicos.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Tubos de Microcentrifuga 1.5ml</h3>
                        <span class="qty">Paq x 500 und</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/69.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                       
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/pera-decantacion.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Pera de decantación de 100ml</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/200.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                       
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/frasco-vidrio.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Frasco de vidrio de 100ml</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/18.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/frasco-ambar.jpg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Frasco de vidrio ambar 100ml</h3>
                        <span class="qty">Unidad</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/25.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                  </div>
                  <!-- / product-grid -->

                </div>

                <div class="tab-pane fade" id="nav-juices" role="tabpanel" aria-labelledby="nav-juices-tab">

                  <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/estufa_agitador.jpeg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Agitador Magnetico + Calentador LCD de 20L</h3>
                        <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/.2,590.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                    
                          </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/microscopi_binocular.jpeg"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Microscopios Binocular LED</h3>
                        <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/.3,400.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                   
                          </div>
                      </div>
                    </div>
                  
                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/regfrigerador.png"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Refrigeradora de 2A -8C</h3>
                        <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/.5,500.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/centrifuga.png"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Centrifuga Clinica Multiuso con Rotor para Tubos</h3>
                        <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/.9,400.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/Cabina bioseguridad.png"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Cabina de Bioseguridad Clase 2</h3>
                        <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/.23,500.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                    <div class="col">
                      <div class="product-item">
                        <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                        <figure>
                          <a href="/" title="Product Title">
                            <img src="${pageContext.request.contextPath}/img/BALANZA-ANALITICA-DE-220.png"  class="tab-image">
                          </a>
                        </figure>
                        <h3>Balanza Analitica de 220 gr</h3>
                        <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                        <span class="price">S/.7.390.00</span>
                        <div class="d-flex align-items-center justify-content-between">
                          <div class="input-group product-qty">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                                    <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                                  </button>
                              </span>
                              <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                              <span class="input-group-btn">
                                  <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                      <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                                  </button>
                              </span>
                          </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                        </div>
                      </div>
                    </div>

                  </div>
                  <!-- / product-grid -->
                  
                </div>
                
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="py-5">
      <div class="container-fluid">
        <div class="row">
          
          <div class="col-md-6">
            <div class="banner-ad bg-danger mb-3" style="background: url('img/materiales-de-laboratorio666.webp');background-repeat: no-repeat;background-position: right bottom;">
              <div class="banner-content p-5">

                <div class="categories text-primary fs-3 fw-bold">hasta 25% de dscto</div>
                <h3 class="banner-title">Materiales de vidrio</h3>
                <p>Matraz, tubo de ensayo, pipeta y mas...</p>
                <a href="#" class="btn btn-dark text-uppercase">Ver ahora</a>

              </div>
            
            </div>
          </div>
          <div class="col-md-6">
            <div class="banner-ad bg-info" style="background: url('img/EQP.webp') no-repeat;background-position: right bottom;">
              <div class="banner-content p-5">

                <div class="categories text-primary fs-3 fw-bold">Hasta 20% de descuento</div>
                <h3 class="banner-title">Equipos de Medición</h3>
                <p>Aprovecha esta promoción en balanzas, termómetros digitales, pH-metros y más.</p>
                <a href="#" class="btn btn-dark text-uppercase">Ver ahora</a>

              </div>
            
            </div>
          </div>
             
        </div>
      </div>
    </section>

    <section class="py-5 overflow-hidden">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">

            <div class="section-header d-flex flex-wrap justify-content-between my-5">
              
              <h2 class="section-title">Productos mas vendidos</h2>

              <div class="d-flex align-items-center">
                <a href="#" class="btn-link text-decoration-none">View All Categories →</a>
                <div class="swiper-buttons">
                  <button class="swiper-prev products-carousel-prev btn btn-primary">❮</button>
                  <button class="swiper-next products-carousel-next btn btn-primary">❯</button>
                </div>  
              </div>
            </div>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">

            <div class="products-carousel swiper">
              <div class="swiper-wrapper">
                
                <div class="product-item swiper-slide">
                  <span class="badge bg-success position-absolute m-3">-15%</span>
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/microscopio.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Microscopio Binocular</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/.3400.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                           <button class="btn btn-link btn-add-to-cart"data-id="22"style="text-decoration: none; color: inherit;">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>                  
                          </div>
                </div>

                <div class="product-item swiper-slide">
                  <span class="badge bg-success position-absolute m-3">-15%</span>
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/balanza.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Balanza Analitica</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">$200.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <span class="badge bg-success position-absolute m-3">-15%</span>
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/centrifuga.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Centrífuga de Laboratorio</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">$2100.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <span class="badge bg-success position-absolute m-3">-15%</span>
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/cabina.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Cabina de Flujo Laminar</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">$4000.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>
                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/vasos.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Vasos precepitados</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">$20.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/calorimetro.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>calorimetro de combustión</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">$150.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/agitador.tamices.png"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Agitador de Tamices</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">S/10450.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/viscosimetro.1.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Viscosimetro</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">S/12300.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>
                
              </div>
            </div>
            <!-- / products-carousel -->

          </div>
        </div>
      </div>
    </section>

    <section class="py-5">
      <div class="container-fluid">

        <div class="bg-secondary py-5 my-5 rounded-5" style="background: url('img/bg-leaves-img-pattern.png') no-repeat;">
          <div class="container my-5">
            <div class="row">
              <div class="col-md-6 p-5">
                <div class="section-header">
                  <h2 class="section-title display-4">Obten <span class="text-primary">10% Descuento</span> en tu primera compra</h2>
                </div>
                <p> Equipa tu laboratorio con los mejores implementos al mejor precio.
                  Beakers, tubos de ensayo, microscopios, guantes, instrumentos de medición y mucho más.</p>
              </div>
              <div class="col-md-6 p-5">
                <form>
                  <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text"
                      class="form-control form-control-lg" name="name" id="name" placeholder="Name">
                  </div>
                  <div class="mb-3">
                    <label for="" class="form-label">Email</label>
                    <input type="email" class="form-control form-control-lg" name="email" id="email" placeholder="abc@mail.com">
                  </div>
                  <div class="form-check form-check-inline mb-3">
                    <label class="form-check-label" for="subscribe">
                    <input class="form-check-input" type="checkbox" id="subscribe" value="subscribe">
                    Subscribete para mas información</label>
                  </div>
                  <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-dark btn-lg">Enviar</button>
                  </div>
                </form>
                
              </div>
              
            </div>
            
          </div>
        </div>
        
      </div>
    </section>

    <section class="py-5 overflow-hidden">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">

            <div class="section-header d-flex justify-content-between">
              
              <h2 class="section-title">Productos mas populares</h2>

              <div class="d-flex align-items-center">
                <a href="#" class="btn-link text-decoration-none">Ver todas las Categorias →</a>
                <div class="swiper-buttons">
                  <button class="swiper-prev products-carousel-prev btn btn-primary">❮</button>
                  <button class="swiper-next products-carousel-next btn btn-primary">❯</button>
                </div>  
              </div>
            </div>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">

            <div class="products-carousel swiper">
              <div class="swiper-wrapper">
                
                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/tubo.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Tubo de ensayo</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/2.50</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/matraz-de-vidrio.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Matraz de vidrio 500 ml</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/22.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/embudo-de-vidrio.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Embudo de vidrio</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/32.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/pipeta.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>pipeta</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/15.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>
                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/bureta.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>bureta</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/630.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/balon.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Balon de destilacion</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/100.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/placa de petri.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Placa de petri</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/50.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>

                <div class="product-item swiper-slide">
                  <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                  <figure>
                    <a href="/" title="Product Title">
                      <img src="${pageContext.request.contextPath}/img/rack-microtubos.jpg"  class="tab-image">
                    </a>
                  </figure>
                  <h3>Rack para crioviales</h3>
                  <span class="qty">1 Unit</span><span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> 4.5</span>
                  <span class="price">s/200.00</span>
                  <div class="d-flex align-items-center justify-content-between">
                    <div class="input-group product-qty">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus">
                              <svg width="16" height="16"><use xlink:href="#minus"></use></svg>
                            </button>
                        </span>
                        <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1">
                        <span class="input-group-btn">
                            <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus">
                                <svg width="16" height="16"><use xlink:href="#plus"></use></svg>
                            </button>
                        </span>
                    </div>
                            <button class="btn btn-primary btn-add-to-cart">
                             Añadir <iconify-icon icon="uil:shopping-cart"></iconify-icon>
                            </button>
                  </div>
                </div>
                
              </div>
            </div>
            <!-- / products-carousel -->

          </div>
        </div>
      </div>
    </section>

    <footer class="py-5">
      <div class="container-fluid">
        <div class="row">

          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer-menu">
              <img src="${pageContext.request.contextPath}/img/logoBio.jpg" alt="logo">
              <div class="social-links mt-5">
                <ul class="d-flex list-unstyled gap-2">
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M15.12 5.32H17V2.14A26.11 26.11 0 0 0 14.26 2c-2.72 0-4.58 1.66-4.58 4.7v2.62H6.61v3.56h3.07V22h3.68v-9.12h3.06l.46-3.56h-3.52V7.05c0-1.05.28-1.73 1.76-1.73Z"/></svg>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M22.991 3.95a1 1 0 0 0-1.51-.86a7.48 7.48 0 0 1-6.22-1.27a1 1 0 0 0-1.14 0a8 8 0 0 1-6.22 1.27a1 1 0 0 0-.84.2a1 1 0 0 0-.37.78v7.45a9 9 0 0 0 3.77 7.33l3.65 2.6a1 1 0 0 0 1.16 0l3.65-2.6A9 9 0 0 0 20 11.88V4.43a1 1 0 0 0-.37-.78ZM18 11.88a7 7 0 0 1-2.93 5.7L12 19.77l-3.07-2.19A7 7 0 0 1 6 11.88v-6.3a10 10 0 0 0 6-1.39a10 10 0 0 0 6 1.39Zm-4.46-2.29l-2.69 2.7l-.89-.9a1 1 0 0 0-1.42 1.42l1.6 1.6a1 1 0 0 0 1.42 0L15 11a1 1 0 0 0-1.42-1.42Z"/></svg>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M23 9.71a8.5 8.5 0 0 0-.91-4.13a2.92 2.92 0 0 0-1.72-1A78.36 78.36 0 0 0 12 4.27a78.45 78.45 0 0 0-8.34.3a2.87 2.87 0 0 0-1.46.74c-.9.83-1 2.25-1.1 3.45a48.29 48.29 0 0 0 0 6.48a9.55 9.55 0 0 0 .3 2a3.14 3.14 0 0 0 .71 1.36a2.86 2.86 0 0 0 1.49.78a45.18 45.18 0 0 0 6.5.33c3.5.05 6.57 0 10.2-.28a2.88 2.88 0 0 0 1.53-.78a2.49 2.49 0 0 0 .61-1a10.58 10.58 0 0 0 .52-3.4c.04-.56.04-3.94.04-4.54ZM9.74 14.85V8.66l5.92 3.11c-1.66.92-3.85 1.96-5.92 3.08Z"/></svg>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17.34 5.46a1.2 1.2 0 1 0 1.2 1.2a1.2 1.2 0 0 0-1.2-1.2Zm4.6 2.42a7.59 7.59 0 0 0-.46-2.43a4.94 4.94 0 0 0-1.16-1.77a4.7 4.7 0 0 0-1.77-1.15a7.3 7.3 0 0 0-2.43-.47C15.06 2 14.72 2 12 2s-3.06 0-4.12.06a7.3 7.3 0 0 0-2.43.47a4.78 4.78 0 0 0-1.77 1.15a4.7 4.7 0 0 0-1.15 1.77a7.3 7.3 0 0 0-.47 2.43C2 8.94 2 9.28 2 12s0 3.06.06 4.12a7.3 7.3 0 0 0 .47 2.43a4.7 4.7 0 0 0 1.15 1.77a4.78 4.78 0 0 0 1.77 1.15a7.3 7.3 0 0 0 2.43.47C8.94 22 9.28 22 12 22s3.06 0 4.12-.06a7.3 7.3 0 0 0 2.43-.47a4.7 4.7 0 0 0 1.77-1.15a4.85 4.85 0 0 0 1.16-1.77a7.59 7.59 0 0 0 .46-2.43c0-1.06.06-1.4.06-4.12s0-3.06-.06-4.12a7.3 7.3 0 0 0-.35-1.9A3 3 0 0 0 20.5 4H6.8l-.33-1.26A1 1 0 0 0 5.5 2h-2v2h1.23l2.48 9.26a1 1 0 0 0 1 .74H18.5a1 1 0 0 1 0 2h-13a1 1 0 0 0 0 2h1.18a3 3 0 1 0 5.64 0h2.36a3 3 0 1 0 5.82 1a2.94 2.94 0 0 0-.4-1.47A3 3 0 0 0 21.5 15Zm-3.91-3H9L7.34 6H19.2ZM9.5 20a1 1 0 1 1 1-1a1 1 0 0 1-1 1Zm8 0a1 1 0 1 1 1-1a1 1 0 0 1-1 1Z"/></svg>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <div class="col-md-2 col-sm-6">
            <div class="footer-menu">
              <h5 class="widget-title">información de contacto</h5>
              <ul class="menu-list list-unstyled">
                <li class="menu-item">
                  <a href="#" class="nav-link">Dirección</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Teléfono </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Correo electrónico</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Horarios de atención</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Visión</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Misión</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-2 col-sm-6">
            <div class="footer-menu">
              <h5 class="widget-title">Enlaces importantes</h5>
              <ul class="menu-list list-unstyled">
                <li class="menu-item">
                  <a  href="#" class="nav-link">Sobre nosotros</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Términos y condiciones</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Politicas de privacidad </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Preguntas frecuentes </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Mapa </a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Delivery</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-2 col-sm-6">
            <div class="footer-menu">
              <h5 class="widget-title">Productos</h5>
              <ul class="menu-list list-unstyled">
                <li class="menu-item">
                  <a href="#" class="nav-link">En tendencia</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Equipos de Laboratorio</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Productos con descuentos</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link"></a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link">Los mas vendidos</a>
                </li>
                <li class="menu-item">
                  <a href="#" class="nav-link"></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer-menu">
              <h5 class="widget-title">Suscribete</h5>
              <p>Subscribete para recibir nuevas ofertas</p>
              <form class="d-flex mt-3 gap-0" role="newsletter">
                <input class="form-control rounded-start rounded-0 bg-light" type="email" placeholder="Email" aria-label="Email">
                <button class="btn btn-dark rounded-end rounded-0" type="submit">Enviar</button>
              </form>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
    <div id="footer-bottom">
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
    </div>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>

  </body>
</html>

.
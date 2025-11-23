<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>BiogenicsLab - Material y equipos de Laboratorio</title>

    <jsp:include page="estructura/head_estructura.jsp" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <script src="${pageContext.request.contextPath}/js/carrito.js"></script>

  </head>
  <body>

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
<script src="/css/carrito.js"></script>



    
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


    
    <section class="py-3" style="background-image: url('img/background-pattern.webp');background-repeat: no-repeat;background-size: cover;">
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
                          <img src="${pageContext.request.contextPath}/img/gm1363-500g.webp" class="img-fluid">
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
                          <img src="${pageContext.request.contextPath}/img/dlab-dpette-micropipeta-electronica.webp" class="img-fluid">
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
                          <img src="${pageContext.request.contextPath}/img/gradilla-50ml.webp" class="img-fluid">
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="swiper-pagination"></div>

                </div>
              </div>
              
              <div class="banner-ad bg-success-subtle block-2" style="background:url('img/medios-10%dscto.webp') no-repeat;background-position: right bottom">
                <div class="row banner-content p-5">

                  <div class="content-wrapper col-md-7">
                    <div class="categories sale mb-3 pb-3">Descuento 10%</div>
                    <h3 class="banner-title">Medios de cultivo</h3>
                    <a href="#" class="d-flex align-items-center nav-link">Ver modelos <svg width="24" height="24"><use xlink:href="#arrow-right"></use></svg></a>
                  </div>

                </div>
              </div>

              <div class="banner-ad bg-danger block-3" style="background:url('img/microscopio-5%dscto.webp') no-repeat;background-position: right bottom">
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
                
                <c:forEach var="marca" items="${marcasActivas}">
                  <div class="swiper-slide">
                    <div class="card mb-3 p-3 rounded-4 shadow border-0">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="${pageContext.request.contextPath}${marca.link_imaguen}" class="img-fluid rounded" alt="${marca.nombreMarca}">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body py-0">
                            <p class="text-muted mb-0">${marca.nombreMarca}</p>
                            <h5 class="card-title">${marca.descripcion}</h5>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>

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
                <div class="d-flex align-items-center">
                  <label for="marca-filter" class="form-label me-2 mb-0">Filtrar por Marca:</label>
                  <select class="form-select" id="marca-filter" style="width: auto;">
                    <option value="TODAS">Todas las Marcas</option>
                    <c:forEach var="marca" items="${marcasActivas}">
                      <option value="${marca.idMarca}">${marca.nombreMarca}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">

                  <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                  
                    <c:forEach var="producto" items="${productosActivos}">
                      <div class="col">
                        <div class="product-item" data-marca-id="${producto.id_marca}" data-producto-id="${producto.id_producto}">
                          <a href="#" class="btn-wishlist"><svg width="24" height="24"><use xlink:href="#heart"></use></svg></a>
                          <figure>
                            <a href="/" title="Product Title">
                              <img src="${pageContext.request.contextPath}${producto.link_imaguen}" class="tab-image">
                            </a>
                          </figure>
                          <h3>${producto.nombre_producto}</h3>
                          <span class="qty">${producto.nombre_marca}</span>
                          <span class="price">S/${producto.precio}</span>
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
                    </c:forEach>

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

        <div class="bg-secondary py-5 my-5 rounded-5" style="background: url('img/bg-leaves-img-pattern.webp') no-repeat;">
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

    <footer class="py-5">
      <div class="container-fluid">
        <div class="row">

          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="footer-menu">
              <img src="${pageContext.request.contextPath}/img/logoBio.webp" alt="logo">
              <div class="social-links mt-5">
                <ul class="d-flex list-unstyled gap-2">
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M15.12 5.32H17V2.14A26.11 26.11 0 0 0 14.26 2c-2.72 0-4.58 1.66-4.58 4.7v2.62H6.61v3.56h3.07V22h3.68v-9.12h3.06l.46-3.56h-3.52V7.05c0-1.05.28-1.73 1.76-1.73Z"/></svg>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M22.991 3.95a1 1 0 0 0-1.51-.86a7.48 7.48 0 0 1-6.22-1.27a1 1 0 0 0-1.14 0a8 8 0 0 1-6.22 1.27a1 1 0 0 0-.84.2a1 1 0 0 0-.37.78v7.45a9 9 0 0 0 3.77 7.33l3.65 2.6a1 1 0 0 0 1.16 0l3.65-2.6A9 9  0 0 0 20 11.88V4.43a1 1 0 0 0-.37-.78ZM18 11.88a7 7 0 0 1-2.93 5.7L12 19.77l-3.07-2.19A7 7 0 0 1 6 11.88v-6.3a10 10 0 0 0 6-1.39a10 10 0 0 0 6 1.39Zm-4.46-2.29l-2.69 2.7l-.89-.9a1 1 0 0 0-1.42 1.42l1.6 1.6a1 1 0 0 0 1.42 0L15 11a1 1 0 0 0-1.42-1.42Z"/></svg>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="btn btn-outline-light">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M23 9.71a8.5 8.5 0 0 0-.91-4.13a2.92 2.92 0 0 0-1.72-1A78.36 78.36 0 0 0 12 4.27a78.45 78.45 0 0 0-8.34.3a2.87 2.87 0 0 0-1.46.74c-.9.83-1 2.25-1.1 3.45a48.29 48.29 0 0 0 0 6.48a9.55 9.55 0 0 0 .3 2a3.14 3.14 0 0 0 .71 1.36a2.86 2.86 0 0 0 1.49.78a45.18 45.18 0 0 0 6.5.33c3.5.05 6.57 0 10.2-.28a2.88 2.88 0 0 0 1.53-.78a2.49 2.49 0 0 0 .61-1a10.58 10.58 0 0 0 .52-3.4c.04-.56.04-3.94.04-4.54ZM9.74 14.85V8.66l5.92 3.11c-1.66.92-3.85 1.96-5.92 3.08Z"/></svg>
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

    <script>
      // Filtro de productos por marca
      document.getElementById('marca-filter').addEventListener('change', function() {
        const selectedMarca = this.value;
        const productos = document.querySelectorAll('.product-item');

        productos.forEach(producto => {
          const marcaId = producto.getAttribute('data-marca-id');

          if (selectedMarca === 'TODAS' || marcaId === selectedMarca) {
            producto.style.display = 'block';
            // También mostrar el contenedor padre .col
            producto.closest('.col').style.display = 'block';
          } else {
            producto.style.display = 'none';
            // También ocultar el contenedor padre .col
            producto.closest('.col').style.display = 'none';
          }
        });
      });
    </script>

  </body>
</html>

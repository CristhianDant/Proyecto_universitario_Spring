<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="main-header">
    <div class="container-fluid">
        <div class="row py-3 border-bottom border-light border-opacity-25">

            <div class="col-sm-4 col-lg-3 text-center text-sm-start">
                <div class="logo-container main-logo">
                    <a href="/">
                        <img src="${pageContext.request.contextPath}/img/logohead.png" alt="BioLab Logo" class="img-fluid">
                    </a>
                </div>
            </div>

            <div class="col-sm-6 offset-sm-2 offset-md-0 col-lg-5 d-none d-lg-block">
                <div class="search-bar row p-2 my-2 rounded-4">
                    <div class="col-12 col-md-10">
                        <form id="search-form" class="text-center" action="/" method="post">
                            <input type="text" class="form-control search-input"
                                   placeholder="¿Qué equipo de laboratorio necesitas?" />
                        </form>
                    </div>
                    <div class="col-1 d-flex align-items-center justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="search-icon">
                            <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/>
                        </svg>
                    </div>
                </div>
            </div>

            <div class="col-sm-8 col-lg-4 d-flex justify-content-end gap-4 align-items-center mt-4 mt-sm-0 justify-content-center justify-content-sm-end">
                <div class="contact-info text-end d-none d-xl-block">
                    <span class="fs-6 text-light">Contáctanos</span>
                    <h5 class="mb-0 phone">+51-944482697</h5>
                </div>

                <ul class="header-icons d-flex justify-content-end list-unstyled m-0">
                    <li>
                        <a href="#" class="rounded-circle p-2 mx-1" title="Mi Cuenta">
                            <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#user"></use></svg>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="rounded-circle p-2 mx-1" title="Favoritos">
                            <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#heart"></use></svg>
                        </a>
                    </li>
                    <li class="d-lg-none">
                        <a href="#" class="rounded-circle p-2 mx-1" data-bs-toggle="offcanvas"
                           data-bs-target="#offcanvasCart" aria-controls="offcanvasCart" title="Carrito">
                            <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#cart"></use></svg>
                        </a>
                    </li>
                    <li class="d-lg-none">
                        <a href="#" class="rounded-circle p-2 mx-1" data-bs-toggle="offcanvas"
                           data-bs-target="#offcanvasSearch" aria-controls="offcanvasSearch" title="Buscar">
                            <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#search"></use></svg>
                        </a>
                    </li>
                </ul>

                <div class="cart text-end d-none d-lg-block dropdown">
                    <button class="border-0 bg-transparent d-flex flex-column gap-2 lh-1 cart-info"
                            type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
                            aria-controls="offcanvasCart">
                        <span class="fs-6 dropdown-toggle">Tu carrito</span>
                        <span class="cart-total fs-5 fw-bold">$0.00</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid main-nav">
        <div class="row py-2">
            <div class="d-flex justify-content-center justify-content-sm-between align-items-center">
                <nav class="main-menu d-flex navbar navbar-expand-lg w-100">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                         aria-labelledby="offcanvasNavbarLabel">
                        <div class="offcanvas-header justify-content-center">
                            <button type="button" class="btn-close btn-close-white"
                                    data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>

                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-center menu-list list-unstyled d-flex gap-md-2 mb-0 w-100">
                                <li class="nav-item">
                                    <a href="/empresa" class="nav-link">Nuestra Empresa</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="LineaProductos"
                                       role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Línea de Productos
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="LineaProductos">
                                        <li><a href="equipos.html" class="dropdown-item">🔬 Equipos de Laboratorio</a></li>
                                        <li><a href="colorantes.html" class="dropdown-item">🎨 Colorantes de Laboratorio</a></li>
                                        <li><a href="kits.html" class="dropdown-item">📦 Kits de Laboratorio</a></li>
                                        <li><a href="medios.html" class="dropdown-item">🧪 Medios de Cultivo</a></li>
                                        <li><a href="reactivos.html" class="dropdown-item">⚗️ Reactivos de Laboratorio</a></li>
                                        <li><a href="suplementos.html" class="dropdown-item">💊 Suplementos de Laboratorio</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item">
                                    <a href="/novedades" class="nav-link">Novedades</a>
                                </li>

                                <li class="nav-item">
                                    <a href="/sale" class="nav-link">Ofertas</a>
                                </li>

                                <li class="nav-item">
                                    <a href="/blog" class="nav-link">Blog</a>
                                </li>

                                <li class="nav-item">
                                    <a href="/contacto" class="nav-link">Contáctanos</a>
                                </li>

                                <li class="nav-item">
                                    <a href="/productos" class="nav-link">Productos</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
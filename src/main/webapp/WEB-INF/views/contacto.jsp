<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Contáctanos - BiogenicsLab</title>
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
    <section class="form-contacto">
  <h2>¿Tienes alguna consulta?</h2>
  <p>Escríbenos y te responderemos lo antes posible.</p>

  <form action="contacto.php" method="POST" class="formulario-bonito">
    <div class="grupo-form">
      <label for="nombre">Nombre completo</label>
      <input type="text" id="nombre" name="nombre" placeholder="Ej: Angel Alvarado" required>
    </div>

    <div class="grupo-form">
      <label for="correo">Correo electrónico</label>
      <input type="email" id="correo" name="correo" placeholder="Ej: nombre@email.com" required>
    </div>

    <div class="grupo-form">
      <label for="mensaje">Mensaje</label>
      <textarea id="mensaje" name="mensaje" rows="6" placeholder="Escribe tu mensaje aquí..." required></textarea>
    </div>

    <button type="submit" class="boton-enviar">Enviar mensaje</button>
  </form>
</section>

  </main>

  <footer>
    <p>&copy; 2025 BiogenicsLab - Todos los derechos reservados</p>
  </footer>

</body>
</html>

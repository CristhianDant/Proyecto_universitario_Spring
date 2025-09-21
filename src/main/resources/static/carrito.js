document.addEventListener("DOMContentLoaded", () => {
  const carritoLista = document.getElementById("carrito-lista");

  // Agregar productos al carrito
  document.querySelectorAll(".btn-add-to-cart").forEach(btn => {
    btn.addEventListener("click", function () {
      const productoItem = btn.closest(".product-item");
      const nombre = productoItem.querySelector("h3").textContent;
      const precioTexto = productoItem.querySelector(".price").textContent.replace("S/", "").trim();
      const cantidadInput = productoItem.querySelector("input[name='quantity']");
      const cantidad = parseInt(cantidadInput.value);

      const producto = {
        nombre: nombre,
        precio: parseFloat(precioTexto),
        cantidad: cantidad,
      };

      let carrito = JSON.parse(localStorage.getItem("carrito")) || [];

      const existe = carrito.find(p => p.nombre === producto.nombre);
      if (existe) {
        existe.cantidad += cantidad;
      } else {
        carrito.push(producto);
      }

      localStorage.setItem("carrito", JSON.stringify(carrito));
      mostrarCarrito();
    });
  });

  // Mostrar carrito
  function mostrarCarrito() {
    const carrito = JSON.parse(localStorage.getItem("carrito")) || [];
    carritoLista.innerHTML = "";
    let total = 0;

    carrito.forEach(p => {
      total += p.precio * p.cantidad;
      const li = document.createElement("li");
      li.className = "list-group-item d-flex justify-content-between align-items-center";
      li.innerHTML = `
        <div>
          <strong>${p.nombre}</strong> x ${p.cantidad}
        </div>
        <span>S/${(p.precio * p.cantidad).toFixed(2)}</span>
      `;
      carritoLista.appendChild(li);
    });

    const totalLi = document.createElement("li");
    totalLi.className = "list-group-item d-flex justify-content-between";
    totalLi.innerHTML = `<strong>Total:</strong><strong>S/${total.toFixed(2)}</strong>`;
    carritoLista.appendChild(totalLi);
  }

  mostrarCarrito();

  // Mostrar formulario
  const btnFinalizar = document.getElementById("btn-finalizar-compra");
  const formContainer = document.getElementById("formulario-compra");
  const totalCompra = document.getElementById("total-compra");

  if (btnFinalizar) {
    btnFinalizar.addEventListener("click", () => {
      const carrito = JSON.parse(localStorage.getItem("carrito")) || [];
      if (carrito.length === 0) {
        alert("Tu carrito está vacío.");
        return;
      }
      const total = carrito.reduce((suma, p) => suma + p.precio * p.cantidad, 0);
      totalCompra.innerText = `Total a pagar: S/${total.toFixed(2)}`;
      formContainer.style.display = "block";
      btnFinalizar.style.display = "none";
    });
  }

  // Enviar formulario
  const form = document.getElementById("form-compra");
  if (form) {
    form.addEventListener("submit", function (e) {
      e.preventDefault();
      const cliente = {
        apellidos: form.apellidos.value,
        nombres: form.nombres.value,
        dni: form.dni.value,
        correo: form.correo.value,
        direccion: form.direccion.value,
        telefono: form.telefono.value
      };
      const carrito = JSON.parse(localStorage.getItem("carrito")) || [];

      fetch("guardar_compra.php", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ cliente, productos: carrito })
      })
      .then(res => res.json())
      .then(data => {
        if (data.ok) {
          alert("✅ ¡Gracias por tu compra!");
          localStorage.removeItem("carrito");
          location.reload();
        } else {
          alert("❌ Error al guardar la compra.");
        }
      })
      .catch(err => {
        console.error(err);
        alert("❌ Error en la conexión.");
      });
    });
  }
});

document.addEventListener("DOMContentLoaded", () => {
    // Función para cargar productos del carrito desde localStorage
    function cargarProductosDelCarrito() {
        const carrito = JSON.parse(localStorage.getItem("carrito")) || [];
        const detalleVentaBody = document.getElementById("detalle-venta-body");
        const totalVentaSpan = document.getElementById("total-venta");

        // Limpiar contenido existente
        detalleVentaBody.innerHTML = "";

        let total = 0;

        // Si no hay productos en el carrito
        if (carrito.length === 0) {
            const filaVacia = document.createElement("tr");
            filaVacia.innerHTML = `
                <td colspan="4" class="text-center text-muted">No hay productos en el carrito</td>
            `;
            detalleVentaBody.appendChild(filaVacia);
            totalVentaSpan.textContent = "S/ 0.00";
            return;
        }

        // Generar filas para cada producto
        carrito.forEach(producto => {
            const subtotal = producto.precio * producto.cantidad;
            total += subtotal;

            const fila = document.createElement("tr");
            fila.innerHTML = `
                <td>${producto.nombre}</td>
                <td>${producto.cantidad}</td>
                <td>S/ ${producto.precio.toFixed(2)}</td>
                <td>S/ ${subtotal.toFixed(2)}</td>
            `;
            detalleVentaBody.appendChild(fila);
        });

        // Actualizar total
        totalVentaSpan.textContent = `S/ ${total.toFixed(2)}`;
    }

    // Cargar productos al cargar la página
    cargarProductosDelCarrito();

    // También podríamos agregar un listener para actualizar si cambia el localStorage
    // (útil si se modifica desde otra pestaña)
    window.addEventListener('storage', (e) => {
        if (e.key === 'carrito') {
            cargarProductosDelCarrito();
        }
    });
});

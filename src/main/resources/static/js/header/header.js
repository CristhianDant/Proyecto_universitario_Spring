document.addEventListener('DOMContentLoaded', function() {
    fetch('/marcas/api/lista_marcas')
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(marcas => {
            const dropdown = document.getElementById('proveedores-dropdown');
            if (!dropdown) {
                console.warn('Elemento proveedores-dropdown no encontrado');
                return;
            }

            // Verificar que marcas es un array
            if (!Array.isArray(marcas)) {
                console.error('Las marcas no son un array:', marcas);
                return;
            }

            dropdown.innerHTML = ''; // Limpiar el dropdown

            marcas.forEach(marca => {
                const li = document.createElement('li');
                const a = document.createElement('a');
                a.className = 'dropdown-item';
                a.href = '#'; // O cambiar a una URL específica, como '/productos?marca=' + marca.idMarca
                a.textContent = marca.nombreMarca || 'Sin nombre';
                li.appendChild(a);
                dropdown.appendChild(li);
            });
        })
        .catch(error => {
            console.error('Error al cargar las marcas:', error);
            // No romper la página si falla la carga de marcas
        });
});

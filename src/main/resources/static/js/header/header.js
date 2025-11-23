document.addEventListener('DOMContentLoaded', function() {
    fetch('/marcas/api/lista_marcas')
        .then(response => response.json())
        .then(marcas => {
            const dropdown = document.getElementById('proveedores-dropdown');
            dropdown.innerHTML = ''; // Limpiar el dropdown

            marcas.forEach(marca => {
                const li = document.createElement('li');
                const a = document.createElement('a');
                a.className = 'dropdown-item';
                a.href = '#'; // O cambiar a una URL específica, como '/productos?marca=' + marca.idMarca
                a.textContent = marca.nombreMarca;
                li.appendChild(a);
                dropdown.appendChild(li);
            });
        })
        .catch(error => {
            console.error('Error al cargar las marcas:', error);
        });
});

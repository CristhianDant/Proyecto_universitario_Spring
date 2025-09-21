document.addEventListener('DOMContentLoaded', () => {
    const productForm = document.getElementById('product-form');
    const productList = document.getElementById('product-list');
    const productIdInput = document.getElementById('product-id');
    const cancelEditButton = document.getElementById('cancel-edit');

    let products = JSON.parse(localStorage.getItem('products')) || [];
    let editing = false;

    const renderProducts = () => {
        productList.innerHTML = '';
        products.forEach(product => {
            const tr = document.createElement('tr');
            tr.innerHTML = `
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>$${product.price}</td>
                <td><img src="${product.image}" alt="${product.name}" width="50"></td>
                <td>
                    <button class="btn btn-warning btn-sm edit-btn" data-id="${product.id}">Editar</button>
                    <button class="btn btn-danger btn-sm delete-btn" data-id="${product.id}">Eliminar</button>
                </td>
            `;
            productList.appendChild(tr);
        });
    };

    const saveProducts = () => {
        localStorage.setItem('products', JSON.stringify(products));
    };

    const getNextId = () => {
        return products.length > 0 ? Math.max(...products.map(p => p.id)) + 1 : 1;
    };

    productForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const name = document.getElementById('product-name').value;
        const description = document.getElementById('product-description').value;
        const price = document.getElementById('product-price').value;
        const image = document.getElementById('product-image').value;
        const id = productIdInput.value;

        if (editing) {
            const productIndex = products.findIndex(p => p.id == id);
            products[productIndex] = { id: parseInt(id), name, description, price, image };
            editing = false;
            productIdInput.value = '';
            cancelEditButton.style.display = 'none';
        } else {
            const newProduct = { id: getNextId(), name, description, price, image };
            products.push(newProduct);
        }

        saveProducts();
        renderProducts();
        productForm.reset();
    });

    productList.addEventListener('click', (e) => {
        if (e.target.classList.contains('edit-btn')) {
            const id = e.target.dataset.id;
            const product = products.find(p => p.id == id);
            document.getElementById('product-name').value = product.name;
            document.getElementById('product-description').value = product.description;
            document.getElementById('product-price').value = product.price;
            document.getElementById('product-image').value = product.image;
            productIdInput.value = id;
            editing = true;
            cancelEditButton.style.display = 'inline-block';
        }

        if (e.target.classList.contains('delete-btn')) {
            const id = e.target.dataset.id;
            products = products.filter(p => p.id != id);
            saveProducts();
            renderProducts();
        }
    });

    cancelEditButton.addEventListener('click', () => {
        editing = false;
        productIdInput.value = '';
        productForm.reset();
        cancelEditButton.style.display = 'none';
    });

    renderProducts();
});

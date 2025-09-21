document.addEventListener('DOMContentLoaded', function() {
    const loginForm = document.getElementById('login-form');

    if (loginForm) {
        loginForm.addEventListener('submit', function(e) {
            e.preventDefault();

            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Aquí puedes agregar tu lógica de autenticación
            // Por ejemplo, verificar contra un backend o datos encriptados

            if (username === 'admin' && password === 'admin') {
                // Redirigir a la página principal si el login es exitoso
                window.location.href = 'index.html';
            } else {
                // Mostrar un mensaje de error si las credenciales son incorrectas
                alert('Usuario o contraseña incorrectos');
            }
        });
    }
});
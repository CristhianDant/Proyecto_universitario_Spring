document.addEventListener('DOMContentLoaded', function() {
    const loginForm = document.getElementById('login-form');

    if (loginForm) {
        loginForm.addEventListener('submit', function(e) {
            e.preventDefault();

            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            fetch('/login/api/auth', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: new URLSearchParams({
                    email: email,
                    password: password
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.id_user) {
                    // Guardar usuario en localStorage
                    localStorage.setItem('user', JSON.stringify(data));
                    // Redirigir a index.jsp
                    window.location.href = '/';
                } else {
                    // Mostrar error
                    document.getElementById('error-div').innerHTML = '<div class="alert alert-danger">' + data.error + '</div>';
                }
            })
            .catch(error => {
                console.error('Error:', error);
                document.getElementById('error-div').innerHTML = '<div class="alert alert-danger">Error al procesar la solicitud</div>';
            });
        });
    }
});
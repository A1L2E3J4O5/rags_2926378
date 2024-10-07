document.getElementById('registroForm').addEventListener('submit', function(event) {
    const clave = document.getElementById('clave').value;

    if (clave.length < 6) {
        alert("La clave debe tener al menos 6 caracteres.");
        event.preventDefault();
    }
});


// Seleccionamos el logo (palabra "Mi Página") para detectar el clic
const toggleButton = document.getElementById('toggle-sidebar');

// Seleccionamos el sidebar y el main-content
const sidebar = document.querySelector('.sidebar');
const mainContent = document.querySelector('.main-content');

// Función para mostrar/ocultar el sidebar y ajustar el tamaño del main-content
toggleButton.addEventListener('click', () => {
    // Alternamos la clase 'hidden' que oculta o muestra el sidebar
    sidebar.classList.toggle('hidden');

    // Si el sidebar está oculto, añadimos la clase 'full-width' al main-content
    if (sidebar.classList.contains('hidden')) {
        mainContent.classList.add('full-width');
    } else {
        mainContent.classList.remove('full-width');
    }
});

function loadContent(page) {
    fetch(page)
        .then(response => response.text())
        .then(data => {
            document.getElementById('main-content').innerHTML = data;
        })
        .catch(error => console.log('Error al cargar la página:', error));
}
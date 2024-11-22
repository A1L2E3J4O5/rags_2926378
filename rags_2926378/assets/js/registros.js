document.addEventListener('DOMContentLoaded', (event) => {
    const sidebar = document.getElementById('sidebar');
    const sidebarCollapse = document.getElementById('sidebarCollapse');
    const closeSidebar = document.getElementById('closeSidebar');
    const overlay = document.querySelector('.overlay');
    const isDeviceCheckbox = document.getElementById('isDevice');
    const deviceFields = document.getElementById('deviceFields');
    const registrosLink = document.getElementById('registrosLink');
    const dispositivosLink = document.getElementById('dispositivosLink');
    const registrosSection = document.querySelector('.row.mt-4');
    const dispositivosSection = document.getElementById('dispositivosSection');

    sidebarCollapse.addEventListener('click', () => {
        sidebar.classList.add('active');
        overlay.classList.add('active');
    });

    closeSidebar.addEventListener('click', () => {
        sidebar.classList.remove('active');
        overlay.classList.remove('active');
    });

    overlay.addEventListener('click', () => {
        sidebar.classList.remove('active');
        overlay.classList.remove('active');
    });

    isDeviceCheckbox.addEventListener('change', () => {
        deviceFields.style.display = isDeviceCheckbox.checked ? 'block' : 'none';
    });

    registrosLink.addEventListener('click', (e) => {
        e.preventDefault();
        registrosSection.style.display = 'block';
        dispositivosSection.style.display = 'none';
    });

    dispositivosLink.addEventListener('click', (e) => {
        e.preventDefault();
        registrosSection.style.display = 'none';
        dispositivosSection.style.display = 'block';
    });
});

function crearRegistro() {
    const fecha = document.getElementById('fecha').value;
    const nombre = document.getElementById('nombre').value;
    const documento = document.getElementById('documento').value;
    const anotaciones = document.getElementById('anotaciones').value;
    const extras = document.getElementById('extras').value;
    const isDevice = document.getElementById('isDevice').checked;

    if (!fecha || !nombre || !documento) {
        Swal.fire({
            icon: 'error',
            title: 'Datos incompletos',
            text: 'Por favor, complete los campos obligatorios: Fecha, Nombre y Documento.',
            confirmButtonColor: '#3498db'
        });
        return;
    }

    if (isDevice) {
        const marca = document.getElementById('marca').value;
        const tipo = document.getElementById('tipo').value;
        const referencia = document.getElementById('referencia').value;
        const codigo = document.getElementById('codigo').value;

        if (!marca || !tipo || !referencia || !codigo) {
            Swal.fire({
                icon: 'error',
                title: 'Datos de dispositivo incompletos',
                text: 'Por favor, complete todos los campos del dispositivo.',
                confirmButtonColor: '#3498db'
            });
            return;
        }

        const dispositivosTabla = document.getElementById('dispositivosTabla');
        const newDeviceRow = dispositivosTabla.insertRow();
        newDeviceRow.innerHTML = `
            <td>${marca}</td>
            <td>${tipo}</td>
            <td>${referencia}</td>
            <td>${codigo}</td>
        `;
    }

    const registrosTabla = document.getElementById('registrosTabla');
    const newRow = registrosTabla.insertRow();
    newRow.innerHTML = `
        <td>${fecha}</td>
        <td>${nombre}</td>
        <td>${documento}</td>
        <td>${anotaciones}</td>
        <td>${extras}</td>
    `;

    // Cerrar el modal y limpiar el formulario
    const modal = bootstrap.Modal.getInstance(document.getElementById('createModal'));
    modal.hide();
    document.getElementById('createForm').reset();
    document.getElementById('deviceFields').style.display = 'none';

    // Mostrar mensaje de éxito
    Swal.fire({
        icon: 'success',
        title: 'Registro creado',
        text: 'El registro ha sido creado exitosamente.',
        confirmButtonColor: '#3498db'
    });
}
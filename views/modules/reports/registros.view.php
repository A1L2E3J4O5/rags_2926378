<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Mejorado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/rags_2926378/assets/css/registros.css">
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Dashboard Mejorado</a>
                <button class="btn" type="button" id="sidebarCollapse">
                    <img src="https://via.placeholder.com/40" alt="Usuario" class="rounded-circle">
                </button>
            </div>
        </nav>
    </div>

    <div class="row mt-4">
        <div class="col">
            <h2>Registros</h2>
            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createModal">
                <i class="fas fa-plus"></i> Crear Registro
            </button>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Fecha</th>
                            <th>Nombre</th>
                            <th>Documento</th>
                            <th>Anotaciones</th>
                            <th>Extras</th>
                        </tr>
                    </thead>
                    <tbody id="registrosTabla">
                        <!-- Los registros se agregarán aquí dinámicamente -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="row mt-4" id="dispositivosSection" style="display: none;">
        <div class="col">
            <h2>Dispositivos</h2>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Marca</th>
                            <th>Tipo</th>
                            <th>Referencia</th>
                            <th>Código</th>
                        </tr>
                    </thead>
                    <tbody id="dispositivosTabla">
                        <!-- Los dispositivos se agregarán aquí dinámicamente -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Sidebar mejorado -->
<div id="sidebar">
    <div class="sidebar-header">
        <i class="fas fa-arrow-left" id="closeSidebar"></i>
        <img src="https://via.placeholder.com/150" alt="Usuario" class="rounded-circle mb-3">
        <h4>Nombre de Usuario</h4>
    </div>
    <div class="sidebar-menu">
        <a href="#" id="registrosLink"><i class="fas fa-clipboard-list"></i> Registros</a>
        <a href="#" id="dispositivosLink"><i class="fas fa-laptop"></i> Dispositivos</a>
    </div>
    <div class="sidebar-footer">
        <a href="#"><i class="fas fa-cog"></i> Configuración</a>
        <a href="#"><i class="fas fa-sign-out-alt"></i> Cerrar Sesión</a>
    </div>
</div>
<div class="overlay"></div>

<!-- Modal para crear registro -->
<div class="modal fade" id="createModal" tabindex="-1" aria-labelledby="createModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createModalLabel">Crear Registro</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="createForm">
                    <div class="mb-3">
                        <label for="fecha" class="form-label">Fecha</label>
                        <input type="date" class="form-control" id="fecha" required>
                    </div>
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" required>
                    </div>
                    <div class="mb-3">
                        <label for="documento" class="form-label">Documento</label>
                        <input type="number" class="form-control" id="documento" required>
                    </div>
                    <div class="mb-3">
                        <label for="anotaciones" class="form-label">Anotaciones</label>
                        <textarea class="form-control" id="anotaciones"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="extras" class="form-label">Extras</label>
                        <input type="text" class="form-control" id="extras">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="isDevice">
                        <label class="form-check-label" for="isDevice">Dispositivo</label>
                    </div>
                    <div id="deviceFields">
                        <div class="mb-3">
                            <label for="marca" class="form-label">Marca</label>
                            <input type="text" class="form-control" id="marca">
                        </div>
                        <div class="mb-3">
                            <label for="tipo" class="form-label">Tipo</label>
                            <select class="form-select" id="tipo">
                                <option value="">Seleccione un tipo</option>
                                <option value="portatil">Portátil</option>
                                <option value="pantalla">Pantalla</option>
                                <option value="torre">Torre</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="referencia" class="form-label">Referencia</label>
                            <input type="text" class="form-control" id="referencia">
                        </div>
                        <div class="mb-3">
                            <label for="codigo" class="form-label">Código</label>
                            <input type="text" class="form-control" id="codigo">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="crearRegistro()">Guardar</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
<script src="/rags_2926378/assets/js/registros.js"></script>
</body>
</html>
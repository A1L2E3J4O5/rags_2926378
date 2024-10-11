import '../assets/css/Registro.css'
import '../assets/js/Registro.js'
function Registro ()
{
return (
    <div className="Registro">
        <div class="container-fluid">
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
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
);
}

export default Registro;
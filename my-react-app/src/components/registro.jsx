function Sidebar ()
{
return (
    <div class="row mt-4">
        <div class="col">
            <h2>Registros</h2>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Fecha</th>
                            <input type="text" />
                        </tr>
                        <tr>
                            <th>Nombre</th>
                            <input type="text" />
                        </tr>
                    </thead>
                    <tbody id="registrosTabla">
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    

);
}

export default Sidebar;
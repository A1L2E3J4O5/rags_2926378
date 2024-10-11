import '../assets/css/Sesion.css'
function Sesion ()
{
return (
    <div className="sesion">
        <form action="">
        <h1>Iniciar Sesion</h1>
        <label >Correo</label>
        <input type="email" required /> <br /> <br />
        <label >Contraseña</label>
        <input type="password"  required/><br /> <br />
        <button className="boton"  >login</button>
        </form>
    </div>
);
}

export default Sesion;
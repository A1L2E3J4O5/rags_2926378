function bienvenida()
{
    var nom = document.getElementById('nombres').value;
    var ape = document.getElementById('apellidos').value;
    var email = document.getElementById('correo').value;
    var cont = document.getElementById('clave').value;

    // alert("Hola "+nom+" "+ape+" su registro a sido exitoso con el correo "+email);


if (nom == nom.length ) 
{
    alert("error");
}
else if (ape == ape.length )
{
    alert("error");
}
else if (email == email.length)
{
    alert("error");
}
else if(cont == cont.length)
{
    alert("error")
}
else
{
    alert("hola "+ nom)
}


}


function login ()
{
    alert("bienvenido")
}


<?php
header('Content-Type: text/html; charset=utf-8');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "accidentes";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$correo = $_POST['correo'];
$clave = $_POST['clave'];

// Buscar el usuario en la base de datos
$sql = "SELECT * FROM usuarios WHERE correo = '$correo'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Verificar la clave
    $row = $result->fetch_assoc();
    
    if (password_verify($clave, $row['clave'])) {
        // Iniciar sesión exitoso
        // Iniciar sesión antes de redireccionar
        session_start();
        $_SESSION['usuario'] = $row['nombre']; // Guardar el nombre del usuario en la sesión
        // Redirigir a dashboard.html
         header("Location: dashboard.html");
        exit(); // Terminar el script después de la redirección
    } else {
        echo "Clave incorrecta. Inténtalo de nuevo.";
    }
} else {
    echo "No se encontró ninguna cuenta con ese correo.";
}

$conn->close();
?>

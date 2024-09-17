<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Registro de Accidentes</title>
    <link rel="stylesheet" href="/rags_2926378/assets/css/styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Iniciar Sesión</h2>
        <form id="loginForm">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Ingresar</button>
        </form>
        <p id="loginError" style="color: red; display: none;">Usuario o contraseña incorrectos</p>
    </div>
    
</body>
</html>
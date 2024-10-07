<!DOCTYPE html>
<html lang="es">
<head>
    <title>Registro de Usuario</title>
    <?php include 'C:\xampp\htdocs\prueba\head\head.php'; ?>
</head>
<body>
    <!-- <h1>Registro de Usuario</h1>
    <form >
        <label for="nombre">Nombre:</label>

        <label for="apellido">Apellido:</label>

        <label for="correo">Correo:</label>

        <label for="clave">Clave:</label>

 



    </form> -->

    <div class="container">
        <h1>Registro de Usuario</h1>
        <form id="registroForm" action="../php/guardar_usuario.php" method="POST">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Nombres </label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nombre">
              </div>
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Apellidos</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="apellido">
              </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Correo</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="correo">
            </div>
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" name="clave">
            </div>
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Registrar</button> <br><br>
            <button class="btn btn-primary" onclick="window.location.href='index.html'">volver</button>
    
          </form>
    </div>

    <script src="script.js"></script>
</body>
</html>

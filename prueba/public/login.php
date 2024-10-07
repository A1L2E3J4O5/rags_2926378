<!DOCTYPE html>
<html lang="es">
<head>
    <title>Iniciar Sesión</title>
    <?php include 'C:\xampp\htdocs\prueba\head\head.php'; ?>
</head>
<body>
    <div class="container"> 
    <form id="loginForm" action="../php/validar_login.php" method="POST">
  <div class="mb-3">
    <label for="correo" class="form-label">Correo</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="correo" required>
  </div>
  <div class="mb-3">
    <label for="clave" class="form-label">Clave</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="clave">
  </div>

    <button class="btn btn-primary" type="submit">Iniciar Sesión</button> <br> <br>
    <button class="btn btn-primary"  onclick="window.location.href='index.php'" type="button">volver</button>

</form>
</div>
<script src="script.js"></script>
</body>
</html>

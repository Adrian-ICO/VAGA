<?php session_start(); ?>
<?php include('includes/conexion.php'); ?>
<!DOCTYPE html>
<html>
<head>
<meta charset=“utf-8“>
<meta http-equiv=“X-UA-Compatible“ content=“IE=edge“>
<title>Entrar</title>
<meta name=“viewport“ content=“width=device-width, initial-scale=1, shrink-to-fit=no“>
<link rel=“stylesheet“ href=“https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css“ integrity=“sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb“ crossorigin=“anonymous“>
</head>
<body>
<nav class=“navbar navbar-expand-lg navbar-dark bg-dark“>
<div class=“container“>
<button class=“navbar-toggler“ type=“button“ data-toggle=“collapse“ data-target=“#navbarTogglerDemo03“ aria-controls=“navbarTogglerDemo03“ aria-expanded=“false“ aria-label=“Toggle navigation“>
<span class=“navbar-toggler-icon“></span></button>
<a class=“navbar-brand“ href=“#“><img src=“https://gabrielchavez.me/wp-content/uploads/2017/08/favicon.png“ width=“30“ height=“30“ class=“d-inline-block align-top“ alt=““></a>
<div class=“collapse navbar-collapse“ id=“navbarTogglerDemo03“>
<ul class=“navbar-nav mr-auto mt-2 mt-lg-0“>
<li class=“nav-item“>
<a class=“nav-link disabled“ href=“#“>Cuenta</a>
</li>
</ul>
<div class=“navbar-right“>
<ul class=“navbar-nav mr-auto mt-2 mt-lg-0“>
<li class=“nav-item“>
<a class=“nav-link“ href=“salir.php“>Salir</a>
</li>
</ul>
</div>
</div>
</div>
</nav>
<div class=“container mt-5“>
<div class=“col-md-6“>
<form action=“#“ method=“post“ role=“form“>
<form>
<div class=“form-group“>
<label>Correo</label>
<input type=“email“ class=“form-control“ name=“email“ placeholder=“Ingresa tu correo“>
</div>
<div class=“form-group“>
<label>Password</label>
<input type=“password“ class=“form-control“ name=“pass“ placeholder=“Ingresa tu Password“>
</div>
<div class=“form-group“>
<div class=“g-recaptcha“ data-sitekey=“SITEEEE KEYYYYY“></div>
</div>
<button name=“login“ type=“submit“ class=“btn btn-primary“>Ingresar</button>
</form>

<?php
require_once "includes/recaptchalib.php";
$secret = "SECRETTTT KEEEEEY";
$response = null;
$reCaptcha = new ReCaptcha($secret);
if ($_POST["g-recaptcha-response"]) {
if (isset($_POST['login']))
{
$email = mysqli_real_escape_string($con, $_POST['email']);
$pass = mysqli_real_escape_string($con, md5($_POST['pass']));
$query = mysqli_query($con, "SELECT * FROM usuarios WHERE password=‘$pass' and correo=‘$email'");
$row = mysqli_fetch_array($query);
$num_row = mysqli_num_rows($query);
if ($num_row > 0)
{
$_SESSION['correo']=$row['correo'];
header('location:index.php');
}
else
{
echo '<div class="alert alert-warning" role="alert">Datos incorrectos!</div>';
}
}
}?>
</div>
<div class="col-md-6">
</div>
</div>
<script src='https://www.google.com/recaptcha/api.js'></script>
</body>
</html>
<?php
include('./lib/validar.php');
$nombre = $_POST['empleado_nombre'];
$apellido = $_POST['empleado_apellido'];
$correo = $_POST['empleado_correo'];
$dni = $_POST['empleado_dni'];
$ubicacion = $_POST['empleado_ubicacion'];
$telefono = $_POST['empleado_telefono'];
$img = $_POST['empleado_img'];
$cv = $_POST['empleado_cv'];
$hash = $_POST['empleado_hash'];



if (is_valid_alpha($nombre) && is_valid_alpha($apellido) && is_valid_email($correo) && is_valid_alpha($dni) && is_valid_alpha($ubicacion) && is_valid_int($telefono) && is_valid_alphanum($img) && is_valid_alphanum($cv) && is_valid_alphanum($hash)) {
    include('./lib/conexion.php');
    $consulta = "SELECT setEmpleado($nombre, $apellido, $correo, $dni, $ubicacion, $telefono, $img, $cv, $hash)";
    $envio = $conexion->query('$consulta');
    if ($envio == "empleado creado con exito") {
        session_start();
        ob_start();
        echo $envio;
        $_SESSION['nombre'] = $nombre;
        $_SESSION['dni'] = $dni;
        header("Location:principal.php");
    } else {
        echo $envio;
        header('Location:login.php');
    }
}

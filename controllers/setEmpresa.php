<?php
/*
*
*
*
*   Queda pendiente enviar la informacion del empleador
*
*
*/
include("./lib/validar.php");
//Empresa
$cuit = $_POST['empresa_cuit'];
$nombre = $_POST['empresa_nombre'];
$rubro = $_POST['empresa_rubro'];
$descripcion = $_POST['empresa_descripcion'];
$ubicacion = $_POST['empresa_ubicacion'];
$correo = $_POST['empresa_correo'];
$img = $_POST['empresa_img'];
$telefono = $_POST['empresa_telefono'];

//Empleador

$empleador_nombre = $_POST['empleador_nombre'];
$empleador_apellido = $_POST['empleador_apellido'];
$empleador_dni = $_POST['empleador_dni'];
$empleador_telefono = $_POST['empleador_telefono'];
$empleador_empresa = $_POST['empleador_empresa'];
$empleador_hash = $_POST['empleador_hash'];

if(is_valid_int($cuit) && is_valid_alpha($nombre) && is_valid_alpha($rubro) && is_valid_alpha($descripcion) && is_valid_alpha($ubicacion) && is_valid_email($correo) && is_valid_alphanum($img) && is_valid_int($telefono)){
    include("./lib/conexion.php");
    $consulta = "SELECT setEmpresa($cuit, $nombre, $rubro, $descripcion, $ubicacion, $correo, $img, $telefo,);";
    $envio = $conexion->query('$consulta');
    if ($envio == "empresa creada con exito") {
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

?>
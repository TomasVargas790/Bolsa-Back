
<?php
if (is_session_started() !== false) {
    include("./lib/validar.php");
    $titulo = $_POST['vacantes_titulo'];
    $descripcion = $_POST['vacantes_descripcion'];
    $salario = $_POST['vacantes_salario'];
    $cantidad = $_POST['vacantes_cantidad'];
    $ubicacion = $_POST['vacantes_ubicacion'];
    $requisistos = $_POST['vacantes_requisistos'];
    $empresa = $_POST['vacantes_empresa'];


    if (is_valid_alpha($titulo) && is_valid_alpha($descripcion) && is_valid_int($salario) && is_valid_int($cantidad) && is_valid_alpha($ubicacion) && is_valid_alpha($requisistos) && is_valid_int($empresa)) {

        $consulta = "SELECT setVacante('$titulo','$descripcion','$salario','$cantidad','$ubicacion','$requisistos','$empresa');";
        $envio = $consulta->query($consulta);
        if ($envio == "vacante creada con exito") {
            echo $envio;
            header("Location:principal.php");
        }
    }
}
?>


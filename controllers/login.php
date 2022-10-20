<?php
    include("./lib/validar.php");
    $correo = $_POST['correo'];
    $hash = $_POST['hash'];

    if(is_valid_email($correo)!==false && is_valid_alphanum($hash)!==false){
        include("./lib/conexion.php");
        $consulta="CALL getEmpleado('$correo','$hash');";
        $envio=$conexion->query($consulta);
        if($envio)
        session_start();
        ob_start();
        $_SESSION['nombre'] = $nombre;
        $_SESSION['dni'] = $dni;
        header("Locacation:principal.php");
    }

?>
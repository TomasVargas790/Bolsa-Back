<?php
function cerrarSesion(){
    session_start();
    session_unset();
    session_destroy();
}
?>
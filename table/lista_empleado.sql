CREATE TABLE `lista_empleado` (
    `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
    `empleado_nombre` varchar(50) NOT NULL,
    `empleado_apellido` varchar(50) NOT NULL,
    `empleado_correo` varchar(60) NOT NULL,
    `empleado_dni` varchar(9) NOT NULL,
    `empleado_ubicacion` varchar(60) NOT NULL,
    `empleado_telefono` varchar(35) NOT NULL,
    `empleado_cv` blob NOT NULL,
    `empleado_hash` longtext NOT NULL,
    PRIMARY KEY (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
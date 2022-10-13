CREATE TABLE `lista_empleador` (
    `id_empleador` int(11) NOT NULL AUTO_INCREMENT,
    `empleador_nombre` varchar(50) DEFAULT NULL,
    `empleador_apellido` varchar(50) DEFAULT NULL,
    `empleador_dni` varchar(8) DEFAULT NULL,
    `empleador_telefono` varchar(20) DEFAULT NULL,
    `empleador_empresa` int(11) DEFAULT NULL,
    `empleador_hash` longtext,
    PRIMARY KEY (`id_empleador`),
    FOREIGN KEY (`empleador_empresa`) REFERENCES `lista_empresa` (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
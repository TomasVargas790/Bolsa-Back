CREATE TABLE `lista_empleador` (
    `id_empleador` INT NOT NULL AUTO_INCREMENT,
    `empleador_nombre` VARCHAR(50) DEFAULT NULL,
    `empleador_apellido` VARCHAR(50) DEFAULT NULL,
    `empleador_dni` VARCHAR(8) DEFAULT NULL,
    `empleador_telefono` VARCHAR(20) DEFAULT NULL,
    `empleador_empresa` INT DEFAULT NULL,
    `empleador_hash` longtext,
    PRIMARY KEY (`id_empleador`),
    FOREIGN KEY (`empleador_empresa`) REFERENCES `lista_empresa` (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
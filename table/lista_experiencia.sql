CREATE TABLE `lista_experiencia` (
    `id_experiencia` int(11) NOT NULL AUTO_INCREMENT,
    `experiencia_empleado` int(11) NOT NULL,
    `experiencia_titulo` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
    `experiencia_rubro` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
    `experiencia_descripcion` varchar(600) CHARACTER SET utf8mb4 NOT NULL,
    `experiencia_fecha_inicio` date NOT NULL,
    `experiencia_fecha_fin` date NOT NULL,
    PRIMARY KEY (`id_experiencia`),
    FOREIGN KEY (`experiencia_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
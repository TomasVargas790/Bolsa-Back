CREATE TABLE `lista_estudios` (
    `id_estudios` int(11) NOT NULL AUTO_INCREMENT,
    `estudios_empleado` int(11) NOT NULL,
    `estudios_titulo` varchar(200) NOT NULL,
    `estudios_promedio` double NOT NULL,
    `estudios_descripcion` varchar(400) NOT NULL,
    `estudios_fecha_inicio` date NOT NULL,
    `estudios_fecha_fin` date NOT NULL,
    PRIMARY KEY (`id_estudios`),
    FOREIGN KEY (`estudios_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
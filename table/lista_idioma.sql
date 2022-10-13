CREATE TABLE `lista_idioma` (
    `id_idioma` int(11) NOT NULL AUTO_INCREMENT,
    `idioma_empleado` int(11) NOT NULL,
    `idioma_idioma` varchar(40) NOT NULL,
    `idioma_nivel` varchar(40) NOT NULL,
    PRIMARY KEY (`id_idioma`),
    FOREIGN KEY (`idioma_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
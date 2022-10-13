CREATE TABLE `lista_vacantes` (
    `id_vacantes` int(11) NOT NULL AUTO_INCREMENT,
    `vacantes_titulo` varchar(50) DEFAULT NULL,
    `vacantes_descripcion` longtext,
    `vacantes_salario` varchar(12) DEFAULT NULL,
    `vacantes_cantidad` int(11) DEFAULT NULL,
    `vacantes_ubicacion` varchar(60) DEFAULT NULL,
    `vacantes_requisistos` varchar(60) DEFAULT NULL,
    `vacantes_empresa` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_vacantes`),
    FOREIGN KEY (`vacantes_empresa`) REFERENCES `lista_empresa` (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
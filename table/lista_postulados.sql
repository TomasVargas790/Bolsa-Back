CREATE TABLE `lista_postulados` (
    `id_postulados` int(11) NOT NULL AUTO_INCREMENT,
    `postulados_vacantes` int(11) DEFAULT NULL,
    `postulados_empleado` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_postulados`),
    FOREIGN KEY (`postulados_vacantes`) REFERENCES `lista_vacantes` (`id_vacantes`),
    FOREIGN KEY (`postulados_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
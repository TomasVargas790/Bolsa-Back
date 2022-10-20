CREATE TABLE `lista_postulados` (
    `id_postulados` INT NOT NULL AUTO_INCREMENT,
    `postulados_vacantes` INT DEFAULT NULL,
    `postulados_empleado` INT DEFAULT NULL,
    PRIMARY KEY (`id_postulados`),
    FOREIGN KEY (`postulados_vacantes`) REFERENCES `lista_vacantes` (`id_vacantes`),
    FOREIGN KEY (`postulados_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
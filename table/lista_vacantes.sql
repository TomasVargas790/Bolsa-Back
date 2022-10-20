CREATE TABLE `lista_vacantes` (
    `id_vacantes` INT NOT NULL AUTO_INCREMENT,
    `vacantes_titulo` VARCHAR(50) DEFAULT NULL,
    `vacantes_descripcion` longtext,
    `vacantes_salario` VARCHAR(12) DEFAULT NULL,
    `vacantes_cantidad` INT DEFAULT NULL,
    `vacantes_ubicacion` VARCHAR(60) DEFAULT NULL,
    `vacantes_requisistos` VARCHAR(60) DEFAULT NULL,
    `vacantes_empresa` INT DEFAULT NULL,
    PRIMARY KEY (`id_vacantes`),
    FOREIGN KEY (`vacantes_empresa`) REFERENCES `lista_empresa` (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO lista_vacantes(vacantes_titulo,vacantes_descripcion,vacantes_salario,vacantes_cantidad,vacantes_ubicacion,vacantes_requisistos,vacantes_empresa)VALUES("Algun puesto","No se algo",100,1,"CABA","aLGO",1)
CREATE TABLE `lista_estudios` (
    `id_estudios` INT NOT NULL AUTO_INCREMENT,
    `estudios_empleado` INT NOT NULL,
    `estudios_titulo` VARCHAR(200) NOT NULL,
    `estudios_promedio` double NOT NULL,
    `estudios_descripcion` VARCHAR(400) NOT NULL,
    `estudios_fecha_inicio` DATE NOT NULL,
    `estudios_fecha_fin` DATE NOT NULL,
    PRIMARY KEY (`id_estudios`),
    FOREIGN KEY (`estudios_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO lista_estudios(estudios_empleado,estudios_titulo,estudios_promedio,estudios_descripcion,estudios_fecha_inicio,estudios_fecha_fin)VALUES(1,"iNGENIRia en Tuco",100.00,"Una Carrera",10/10/10,10/10/10)
CREATE TABLE `lista_experiencia` (
    `id_experiencia` INT NOT NULL AUTO_INCREMENT,
    `experiencia_empleado` INT NOT NULL,
    `experiencia_titulo` VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    `experiencia_rubro` VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL,
    `experiencia_descripcion` VARCHAR(600) CHARACTER SET utf8mb4 NOT NULL,
    `experiencia_fecha_inicio` DATE NOT NULL,
    `experiencia_fecha_fin` DATE NOT NULL,
    PRIMARY KEY (`id_experiencia`),
    FOREIGN KEY (`experiencia_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO lista_experiencia(experiencia_empleado,experiencia_titulo,experiencia_rubro,experiencia_descripcion,experiencia_fecha_inicio,experiencia_fecha_fin)VALUES(1,"Algun puesto","Algun rubro","Descripcion","10/10/2003","10/10/2003")
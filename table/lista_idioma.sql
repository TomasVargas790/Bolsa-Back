CREATE TABLE `lista_idioma` (
    `id_idioma` INT NOT NULL AUTO_INCREMENT,
    `idioma_empleado` INT NOT NULL,
    `idioma_idioma` VARCHAR(40) NOT NULL,
    `idioma_nivel` VARCHAR(40) NOT NULL,
    PRIMARY KEY (`id_idioma`),
    FOREIGN KEY (`idioma_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO lista_idioma(idioma_empleado,idioma_idioma,idioma_nivel)VALUES(1,"Ingles","Avanzado")
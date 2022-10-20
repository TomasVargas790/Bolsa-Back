-- ------------------------------------------CREATE------------------------------------------

CREATE DATABASE bolsa;
USE BOLSA;

-- CREATE lista_empleado
CREATE TABLE `lista_empleado` (
    `id_empleado` INT NOT NULL AUTO_INCREMENT,
    `empleado_nombre` VARCHAR(50) NOT NULL,
    `empleado_apellido` VARCHAR(50) NOT NULL,
    `empleado_correo` VARCHAR(60) NOT NULL,
    `empleado_dni` VARCHAR(9) NOT NULL,
    `empleado_ubicacion` VARCHAR(60) NOT NULL,
    `empleado_telefono` VARCHAR(35) NOT NULL,
    `empleado_img` LONGBLOB NOT NULL,
    `empleado_cv` LONGBLOB NOT NULL,
    `empleado_hash` LONGTEXT NOT NULL,
    PRIMARY KEY (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- CREATE lista_empresa
CREATE TABLE `lista_empresa` (
    `id_empresa` INT NOT NULL AUTO_INCREMENT,
    `empresa_cuit` VARCHAR(12) NOT NULL,
    `empresa_nombre` VARCHAR(60) NOT NULL,
    `empresa_rubro` VARCHAR(70) NOT NULL,
    `empresa_descripcion` LONGTEXT NOT NULL,
    `empresa_ubicacion` VARCHAR(60) NOT NULL,
    `empresa_correo` VARCHAR(60) NOT NULL,
    `empresa_img` LONGBLOB NOT NULL,
    `empresa_telefono` VARCHAR(18) NOT NULL,
    PRIMARY KEY (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- CREATE lista_empleador
CREATE TABLE `lista_empleador` (
    `id_empleador` INT NOT NULL AUTO_INCREMENT,
    `empleador_nombre` VARCHAR(50) DEFAULT NULL,
    `empleador_apellido` VARCHAR(50) DEFAULT NULL,
    `empleador_dni` VARCHAR(8) DEFAULT NULL,
    `empleador_telefono` VARCHAR(20) DEFAULT NULL,
    `empleador_empresa` INT DEFAULT NULL,
    `empleador_hash` LONGTEXT,
    PRIMARY KEY (`id_empleador`),
    FOREIGN KEY (`empleador_empresa`) REFERENCES `lista_empresa` (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- CREATE lista_estudios
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

-- CREATE lista_experiencia
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

-- CREATE lista_idioma
CREATE TABLE `lista_idioma` (
    `id_idioma` INT NOT NULL AUTO_INCREMENT,
    `idioma_empleado` INT NOT NULL,
    `idioma_idioma` VARCHAR(40) NOT NULL,
    `idioma_nivel` VARCHAR(40) NOT NULL,
    PRIMARY KEY (`id_idioma`),
    FOREIGN KEY (`idioma_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- CREATE lista_vacantes
CREATE TABLE `lista_vacantes` (
    `id_vacantes` INT NOT NULL AUTO_INCREMENT,
    `vacantes_titulo` VARCHAR(50) DEFAULT NULL,
    `vacantes_descripcion` LONGTEXT,
    `vacantes_salario` VARCHAR(12) DEFAULT NULL,
    `vacantes_cantidad` INT DEFAULT NULL,
    `vacantes_ubicacion` VARCHAR(60) DEFAULT NULL,
    `vacantes_requisistos` VARCHAR(60) DEFAULT NULL,
    `vacantes_empresa` INT DEFAULT NULL,
    PRIMARY KEY (`id_vacantes`),
    FOREIGN KEY (`vacantes_empresa`) REFERENCES `lista_empresa` (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- CREATE lista_postulados
CREATE TABLE `lista_postulados` (
    `id_postulados` INT NOT NULL AUTO_INCREMENT,
    `postulados_vacantes` INT DEFAULT NULL,
    `postulados_empleado` INT DEFAULT NULL,
    PRIMARY KEY (`id_postulados`),
    FOREIGN KEY (`postulados_vacantes`) REFERENCES `lista_vacantes` (`id_vacantes`),
    FOREIGN KEY (`postulados_empleado`) REFERENCES `lista_empleado` (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


-- ------------------------------------------INSERT------------------------------------------

-- INSERT INTO lista_empleado
INSERT INTO lista_empleado(empleado_nombre,empleado_apellido,empleado_correo,empleado_dni,empleado_ubicacion,empleado_telefono,empleado_img,empleado_cv,empleado_hash)VALUES("Tomás","Vargas","vargastomaset32@gmail.com","45238491","CABA, Villa Crespo","1126365060","a","a","tuco");

-- INSERT INTO lista_empresa
INSERT INTO lista_empresa(empresa_cuit,empresa_nombre,empresa_rubro,empresa_descripcion,empresa_ubicacion,empresa_correo,empresa_img,empresa_telefono)VALUES("54516546","Tuco & CO","Amasar","amasar","mi cuarto","tuco@gmail.com","aa","1126365060");

-- INSERT INTO lista_estudios
INSERT INTO lista_estudios(estudios_empleado,estudios_titulo,estudios_promedio,estudios_descripcion,estudios_fecha_inicio,estudios_fecha_fin)VALUES(1,"iNGENIRia en Tuco",100.00,"Una Carrera",10/10/10,10/10/10);

-- INSERT INTO lista_experiencia
INSERT INTO lista_experiencia(experiencia_empleado,experiencia_titulo,experiencia_rubro,experiencia_descripcion,experiencia_fecha_inicio,experiencia_fecha_fin)VALUES(1,"Algun puesto","Algun rubro","Descripcion","10/10/2003","10/10/2003");

-- INSERT INTO lista_idioma
INSERT INTO lista_idioma(idioma_empleado,idioma_idioma,idioma_nivel)VALUES(1,"Ingles","Avanzado");

-- INSERT INTO lista_vacantes
INSERT INTO lista_vacantes(vacantes_titulo,vacantes_descripcion,vacantes_salario,vacantes_cantidad,vacantes_ubicacion,vacantes_requisistos,vacantes_empresa)VALUES("Algun puesto","No se algo",100,1,"CABA","aLGO",1);

-- ------------------------------------------VIEWS------------------------------------------


-- View empleado
DELIMITER //
CREATE VIEW view_empleado as
SELECT
    lista_empleado.empleado_dni AS `dni`,
    lista_empleado.empleado_nombre AS `nombre`,
    lista_empleado.empleado_apellido AS `apellido`,
    lista_empleado.empleado_correo AS `correo`,
    lista_empleado.empleado_ubicacion AS `ubicacion`,
    lista_estudios.estudios_titulo AS `titulo`,
    lista_estudios.estudios_descripcion AS `descripcion`,
    lista_estudios.estudios_promedio AS `promedio`,
    lista_experiencia.experiencia_titulo AS `titulo`,
    lista_experiencia.experiencia_descripcion AS `descripcion`,
    lista_experiencia.experiencia_rubro AS `rubro`,
    lista_idioma.idioma_idioma AS `idioma`,
    lista_idioma.idioma_nivel AS `nivel`
FROM
    lista_empleado
    JOIN lista_estudios on lista_estudios.estudios_empleado = lista_empleado.id_empleado
    JOIN lista_experiencia on lista_experiencia.experiencia_empleado = lista_empleado.id_empleado
    JOIN lista_idioma on lista_idioma.idioma_empleado = lista_empleado.id_empleado
// 
DELIMITER ;


-- View vacante
DELIMITER //
CREATE VIEW view_vacante as
SELECT
    lista_vacantes.vacantes_titulo AS `Titulo`,
    lista_vacantes.vacantes_descripcion AS `Descripcion`,
    lista_empresa.empresa_nombre AS `Empresa`,
    lista_empresa.empresa_img AS `img`
FROM
    lista_vacantes
    JOIN lista_empresa on lista_vacantes.vacantes_empresa = lista_empresa.id_empresa
//
DELIMITER ;
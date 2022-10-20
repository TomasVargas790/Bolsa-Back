CREATE TABLE `lista_empresa` (
    `id_empresa` INT NOT NULL AUTO_INCREMENT,
    `empresa_cuit` VARCHAR(12) NOT NULL,
    `empresa_nombre` VARCHAR(60) NOT NULL,
    `empresa_rubro` VARCHAR(70) NOT NULL,
    `empresa_descripcion` longtext NOT NULL,
    `empresa_ubicacion` VARCHAR(60) NOT NULL,
    `empresa_correo` VARCHAR(60) NOT NULL,
    `empresa_img` longblob NOT NULL,
    `empresa_telefono` VARCHAR(18) NOT NULL,
    PRIMARY KEY (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO lista_empresa(empresa_cuit,empresa_nombre,empresa_rubro,empresa_descripcion,empresa_ubicacion,empresa_correo,empresa_img,empresa_telefono)VALUES("54516546","Tuco & CO","Amasar","amasar","mi cuarto","tuco@gmail.com","aa","1126365060")
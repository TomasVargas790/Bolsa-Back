CREATE TABLE `lista_empresa` (
    `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
    `empresa_cuit` varchar(12) NOT NULL,
    `empresa_nombre` varchar(60) NOT NULL,
    `empresa_rubro` varchar(70) NOT NULL,
    `empresa_descripcion` longtext NOT NULL,
    `empresa_ubicacion` varchar(60) NOT NULL,
    `empresa_correo` varchar(60) NOT NULL,
    `empresa_telefono` varchar(18) NOT NULL,
    PRIMARY KEY (`id_empresa`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `lista_empleado` (
    `id_empleado` INT NOT NULL AUTO_INCREMENT,
    `empleado_nombre` VARCHAR(50) NOT NULL,
    `empleado_apellido` VARCHAR(50) NOT NULL,
    `empleado_correo` VARCHAR(60) NOT NULL,
    `empleado_dni` VARCHAR(9) NOT NULL,
    `empleado_ubicacion` VARCHAR(60) NOT NULL,
    `empleado_telefono` VARCHAR(35) NOT NULL,
    `empleado_img` longblob NOT NULL,
    `empleado_cv` longblob NOT NULL,
    `empleado_hash` longtext NOT NULL,
    PRIMARY KEY (`id_empleado`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO lista_empleado(id_empleado,empleado_nombre,empleado_apellido,empleado_correo,empleado_dni,empleado_ubicacion,empleado_telefono,empleado_img,empleado_cv,empleado_hash)VALUES("Tomás","Vargas","vargastomaset32@gmail.com","45238491","CABA, Villa Crespo","1126365060","a","a","tuco")
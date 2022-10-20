DELIMITER //
 CREATE FUNCTION `setEmpresa` (
    `empresa_cuit` varchar(12),
    `empresa_nombre` varchar(60),
    `empresa_rubro` varchar(70),
    `empresa_descripcion` longtext,
    `empresa_ubicacion` varchar(60),
    `empresa_correo` varchar(60),
    `empresa_img` longblob,
    `empresa_telefono` varchar(18)
) RETURNS TEXT BEGIN DECLARE __mensaje text;

SET
    __mensaje = `Se prudujo un error agregando el usuario`;

if (
    (empresa_cuit IS NOT NULL)
    AND (empresa_nombre IS NOT NULL)
    AND (empresa_rubro IS NOT NULL)
    AND (empresa_descripcion IS NOT NULL)
    AND (empresa_ubicacion IS NOT NULL)
    AND (empresa_correo IS NOT NULL)
    AND (empresa_img IS NOT NULL)
    AND (empresa_telefono IS NOT NULL)
) THEN
INSERT INTO
    `lista_empresa`
VALUES
    (
        empresa_cuit,
        empresa_nombre,
        empresa_rubro,
        empresa_descripcion,
        empresa_ubicacion,
        empresa_correo,
        empresa_img,
        empresa_telefono
    );

SET
    __mensaje = `empleado creado con exito`;

ELSE
SET
    __mensaje = `Los campos no deben de estar vacios`;

END IF;

    RETURN __mensaje;

END // 
DELIMITER ;
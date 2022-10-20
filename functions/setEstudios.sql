DELIMITER // 
CREATE FUNCTION `setEstudios` (
    `id_estudios` INT,
    `estudios_empleado` INT,
    `estudios_titulo` VARCHAR(200),
    `estudios_promedio` double,
    `estudios_descripcion` VARCHAR(400),
    `estudios_fecha_inicio` DATE,
    `estudios_fecha_fin` DATE
) RETURNS TEXT BEGIN DECLARE __mensaje text;

SET __mensaje = `Se prudujo un error agregando el usuario`;

if (
    (id_estudios IS NOT NULL)
    AND (estudios_empleado IS NOT NULL)
    AND (estudios_titulo IS NOT NULL)
    AND (estudios_promedio IS NOT NULL)
    AND (estudios_descripcion IS NOT NULL)
    AND (estudios_fecha_inicio IS NOT NULL)
    AND (estudios_fecha_fin IS NOT NULL)
) THEN
INSERT INTO `lista_estudios`
VALUES(
        id_estudios,
        estudios_empleado,
        estudios_titulo,
        estudios_promedio,
        estudios_descripcion,
        estudios_fecha_inicio,
        estudios_fecha_fin,
    );

SET __mensaje = `Estudios creado con exito`;

ELSE

SET __mensaje = `Los campos no deben de estar vacios`;

END IF;

RETURN __mensaje;
END // 
DELIMITER ;
DELIMITER // 
CREATE FUNCTION `setExperiencia` (
    `id_experiencia` INT,
    `experiencia_empleado` INT,
    `experiencia_titulo` VARCHAR(200),
    `experiencia_rubro` VARCHAR(200),
    `experiencia_descripcion` VARCHAR(600),
    `experiencia_fecha_inicio` DATE,
    `experiencia_fecha_fin` DATE
) RETURNS TEXT BEGIN DECLARE __mensaje text;

SET __mensaje = `Se prudujo un error agregando el usuario`;

if (
    (id_experiencia IS NOT NULL)
    AND (experiencia_empleado IS NOT NULL)
    AND (experiencia_titulo IS NOT NULL)
    AND (experiencia_rubro IS NOT NULL)
    AND (experiencia_descripcion IS NOT NULL)
    AND (experiencia_fecha_inicio IS NOT NULL)
    AND (experiencia_fecha_fin IS NOT NULL)
) THEN
INSERT INTO `lista_experiencia`
VALUES(
    	null,
        id_experiencia,
        experiencia_empleado,
        experiencia_titulo,
        experiencia_rubro,
        experiencia_descripcion,
        experiencia_fecha_inicio,
        experiencia_fecha_fin,
    );

SET __mensaje = `Experiencia creada con exito`;

ELSE

SET __mensaje = `Los campos no deben de estar vacios`;

END IF;

RETURN __mensaje;
END // 
DELIMITER ;
DELIMITER //
CREATE FUNCTION `setEmpleador` (
    `empleador_nombre` VARCHAR(50) `empleador_apellido` VARCHAR(50) `empleador_dni` VARCHAR(8) `empleador_telefono` VARCHAR(20) `empleador_empresa` INT `empleador_hash` longtext
) RETURN TEXT BEGIN DECLARE __mensaje TEXT;

SET
    __mensaje = `Se prudujo un error agregando el usuario`;

if (
    (empleador_nombre IS NOT NULL)
    AND (empleador_apellido IS NOT NULL)
    AND (empleador_dni IS NOT NULL)
    AND (empleador_telefono IS NOT NULL)
    AND (empleador_empresa IS NOT NULL)
    AND (empleador_hash IS NOT NULL)
    INSERT INTO
        `lista_empleador`
    VALUES
        (
            empleador_nombre,
            empleador_apellido,
            empleador_dni,
            empleador_telefono,
            empleador_empresa,
            empleador_hash
        );

SET
    __mensaje = `empleador creado con exito`;

ELSE
SET
    __mensaje = `Los campos no deben de estar vacios`;

END IF;

RETURN __mensaje;

END // 
DELIMITER;
DELIMITER // 
CREATE FUNCTION `setEmpleado` (
    `empleado_nombre` varchar(50),
    `empleado_apellido` varchar(50),
    `empleado_correo` varchar(60),
    `empleado_dni` varchar(9),
    `empleado_ubicacion` varchar(60),
    `empleado_telefono` varchar(35),
    `empleado_img` longblob,
    `empleado_cv` longblob,
    `empleado_hash` longtext
) RETURNS TEXT BEGIN DECLARE __mensaje text;

SET __mensaje = `Se prudujo un error agregando el usuario`;

if (
    (empleado_nombre IS NOT NULL)
    AND (empleado_apellido IS NOT NULL)
    AND (empleado_correo IS NOT NULL)
    AND (empleado_dni IS NOT NULL)
    AND (empleado_ubicacion IS NOT NULL)
    AND (empleado_telefono IS NOT NULL)
    AND (empleado_img IS NOT NULL)
    AND (empleado_cv IS NOT NULL)
    AND (empleado_hash IS NOT NULL)
) THEN
INSERT INTO `lista_empleado`
VALUES(
        empleado_nombre,
        empleado_apellido,
        empleado_correo,
        empleado_dni,
        empleado_ubicacion,
        empleado_telefono,
        empleado_img,
        empleado_cv,
        empleado_hash
    );

SET __mensaje = `empleado creado con exito`;

ELSE

SET __mensaje = `Los campos no deben de estar vacios`;

END IF;

RETURN __mensaje;

END // 
DELIMITER ;
DELIMITER // CREATE FUNCTION `setVacantes` (
    `id_vacantes` INT,
    `vacantes_titulo` VARCHAR(50),
    `vacantes_descripcion` longtext,
    `vacantes_salario` VARCHAR(12),
    `vacantes_cantidad` INT,
    `vacantes_ubicacion` VARCHAR(60),
    `vacantes_requisistos` VARCHAR(60) `vacantes_empresa` INT
) RETURNS TEXT BEGIN DECLARE __mensaje text;

SET
    __mensaje = `Se prudujo un error agregando el usuario`;

if (
    (id_vacantes IS NOT NULL)
    AND (vacantes_titulo IS NOT NULL)
    AND (vacantes_descripcion IS NOT NULL)
    AND (vacantes_salario IS NOT NULL)
    AND (vacantes_cantidad IS NOT NULL)
    AND (vacantes_ubicacion IS NOT NULL)
    AND (vacantes_requisistos IS NOT NULL)
    AND (vacantes_empresa IS NOT NULL)
) THEN
INSERT INTO
    `lista_vacantes`
VALUES
(
        id_vacantes,
        vacantes_titulo,
        vacantes_descripcion,
        vacantes_salario,
        vacantes_cantidad,
        vacantes_ubicacion,
        vacantes_requisistos,
        vacantes_empresa
    );

SET
    __mensaje = `Experiencia creada con exito`;

ELSE
SET
    __mensaje = `Los campos no deben de estar vacios`;

END IF;

RETURN __mensaje;

END // 
DELIMITER;
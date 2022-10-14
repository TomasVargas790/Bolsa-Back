CREATE FUNCTION `setCandidato` (nombre_candidato VARCHAR(75), apellido_candidato VARCHAR(75), documento_candidato int,
                                correo_candidato VARCHAR(75), telefono_candidato int, curriculum_candidato longtext, 
                                alta_candidato date)

RETURNS TEXT
BEGIN

    DECLARE __mensaje text;
    SET __mensaje = `Se prudujo un error agregando el usuario`;

    if ( (nombre_candidato IS NOT NULL) AND (apellido_candidato IS NOT NULL) AND (documento_candidato IS NOT NULL) AND 
         (correo_candidato IS NOT NULL) AND (telefono_candidato IS NOT NULL) AND (curriculum_candidato IS NOT NULL) AND
         (alta_candidato IS NOT NULL)) THEN

         INSERT INTO `lista_candidatos` VALUES (null, nombre_candidato, apellido_candidato, documento_candidato, 
                                                      correo_candidato, telefono_candidato, curriculum_candidato
                                                      alta_candidato);

        SET __mensaje = `Candidato creado con exito`;

    ELSE
        SET __mensaje = `Los campos no deben de estar vacios`;
    END IF;
END
-- Muestra el candidato --

SELECT `setCandidato`('nombre_candidato', 'apellido_candidato', 'documento_candidato',
                      'correo_candidato', 'telefono_candidato', 'curriculum_candidato',
                      'alta_candidato') AS 'Mensaje';

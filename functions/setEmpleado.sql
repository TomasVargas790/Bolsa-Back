CREATE FUNCTION `setEmpleado` (nombre_empleado VARCHAR(50), apellido_empleado VARCHAR(50), documento_empleado   VARCHAR(9),correo_empleado VARCHAR(60), telefono_empleado VARCHAR(35), cv_empleado longtext,ubicacion_empleado VARCHAR(60),hash_empleado longtext)

RETURNS TEXT
BEGIN

    DECLARE __mensaje text;
    SET __mensaje = `Se prudujo un error agregando el usuario`;

    if ( (nombre_empleado IS NOT NULL) AND (apellido_empleado IS NOT NULL) AND (documento_empleado IS NOT NULL) AND 
         (correo_empleado IS NOT NULL) AND (telefono_empleado IS NOT NULL) AND (curriculum_empleado IS NOT NULL) AND
         (alta_empleado IS NOT NULL)) THEN

         INSERT INTO `lista_empleados` VALUES (null, nombre_empleado, apellido_empleado, documento_empleado, 
                                                      correo_empleado, telefono_empleado, curriculum_empleado
                                                      alta_empleado);

        SET __mensaje = `empleado creado con exito`;

    ELSE
        SET __mensaje = `Los campos no deben de estar vacios`;
    END IF;
END
-- Muestra el empleado --

SELECT `setempleado`('nombre_empleado', 'apellido_empleado', 'documento_empleado',
                      'correo_empleado', 'telefono_empleado', 'curriculum_empleado',
                      'alta_empleado') AS 'Mensaje';

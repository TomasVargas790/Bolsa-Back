DELIMITER // 
CREATE PROCEDURE `getEmpleado` (IN correo varchar(35), IN empleado_hash longtext) 
BEGIN
IF EXISTS( SELECT `correo`,`hash` FROM `view_empleado` WHERE `correo`=correo AND `hash`=empleado_hash) 
    THEN 
        SELECT * FROM `view_empleado` WHERE `correo`=correo AND `hash`=empleado_hash;
    ELSE
        SELECT 'No se encuentra el Empleado' AS 'Mensaje';
    END IF;
END //
DELIMITER ;
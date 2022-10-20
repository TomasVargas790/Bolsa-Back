DELIMITER // 
CREATE PROCEDURE `getVacantes` (IN id INT) 
BEGIN
IF EXISTS( SELECT 'vacantes_empleado' FROM `view_vacantes` WHERE `vacantes_empleado` = id) 
    THEN 
        SELECT * FROM `view_vacantes` WHERE `vacantes_empleado` = id;
    ELSE
        SELECT 'No se encuentra la instruccion' AS 'Mensaje';
    END IF;
END //
DELIMITER ;
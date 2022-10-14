
CREATE PROCEDURE `getCandidatos` (IN _id INT)
BEGIN
    IF EXISTS( SELECT 'documento_candidato' FROM `lista_candidato` WHERE `documento_candidato` = _id) THEN
        SELECT * FROM `view_acceso` WHERE `ID` = _id;
    ELSE
        SELECT `No se encuentra al candidato` AS 'Mensaje';
    END IF;
END

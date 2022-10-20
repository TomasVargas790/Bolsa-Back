CREATE VIEW view_vacante as
SELECT
    lista_vacantes.vacantes_titulo AS `Titulo`,
    lista_vacantes.vacantes_descripcion AS `Descripcion`,
    lista_empresa.empresa_nombre AS `Empresa`,
    lista_empresa.empresa_img AS `img`
FROM
    lista_vacantes
    JOIN lista_empresa on lista_vacantes.vacantes_empresa = lista_empresa.id_empresa
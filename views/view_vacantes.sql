CREATE VIEW view_vacante as
SELECT 
lista_vacantes.vacantes_titulo,
lista_vacantes.vacantes_descripcion,
lista_empresa.empresa_nombre,
lista_empresa.empresa_img
FROM
lista_vacantes
JOIN lista_empresa on lista_vacantes.vacantes_empresa = lista_empresa.id_empresa
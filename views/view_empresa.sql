CREATE VIEW view_empresa as
SELECT
    lista_empresa.empresa_nombre,
    lista_empresa.empresa_correo,
    lista_empresa.empresa_rubro,
    lista_empresa.empresa_descripcion,
    lista_empresa.empresa_ubicacion,
    lista_empresa.empresa_telefono,
    lista_vacantes.vacantes_titulo,
    lista_vacantes.vacantes_descripcion,
    lista_vacantes.vacantes_salario,
    lista_vacantes.vacantes_ubicacion
FROM
    lista_empresa
    JOIN lista_vacantes on lista_vacantes.vacantes_empresa = lista_empresa.id_empresa
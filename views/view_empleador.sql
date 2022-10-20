CREATE VIEW view_empleador as
SELECT
    lista_empleado.id_empleador  AS `id`,
    lista_empleado.empleador_nombre  AS `nombre`,
    lista_empleado.empleador_apellido  AS `apellido`,
    lista_empleado.empleador_dni  AS `dni`,
    lista_empleado.empleador_telefono  AS `telefono`,
    lista_empleado.empleador_empresa  AS `empresa`,
    lista_estudios.empleador_hash  AS `hash`,
    lista_empresa.id_empresa AS `id_empresa`,
    lista_empresa.empresa_nombre AS `empresa_nombre`,
    lista_empresa.empresa_img AS `img`

FROM
    lista_empleado
    JOIN lista_empresa on lista_empleado.empleador_empresa = lista_empresa.id_empresa
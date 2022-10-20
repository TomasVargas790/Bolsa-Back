CREATE VIEW view_empleado as
SELECT
    lista_empleado.empleado_dni AS `dni`,
    lista_empleado.empleado_nombre AS `nombre`,
    lista_empleado.empleado_apellido AS `apellido`,
    lista_empleado.empleado_correo AS `correo`,
    lista_empleado.empleado_ubicacion AS `ubicacion`,
    lista_empleado.empleado_hash AS `hash`,
    lista_estudios.estudios_titulo AS `titulo`,
    lista_estudios.estudios_descripcion AS `descripcion`,
    lista_estudios.estudios_promedio AS `promedio`,
    lista_experiencia.experiencia_titulo AS `titulo`,
    lista_experiencia.experiencia_descripcion AS `descripcion`,
    lista_experiencia.experiencia_rubro AS `rubro`,
    lista_idioma.idioma_idioma AS `idioma`,
    lista_idioma.idioma_nivel AS `nivel`
FROM
    lista_empleado
    JOIN lista_estudios on lista_estudios.estudios_empleado = lista_empleado.id_empleado
    JOIN lista_experiencia on lista_experiencia.experiencia_empleado = lista_empleado.id_empleado
    JOIN lista_idioma on lista_idioma.idioma_empleado = lista_empleado.id_empleado
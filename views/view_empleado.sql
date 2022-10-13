CREATE VIEW view_empleado as
SELECT
    lista_empleado.empleado_nombre,
    lista_empleado.empleado_apellido,
    lista_empleado.empleado_correo,
    lista_empleado.empleado_ubicacion,
    lista_estudios.estudios_titulo,
    lista_estudios.estudios_descripcion,
    lista_estudios.estudios_promedio,
    lista_experiencia.experiencia_titulo,
    lista_experiencia.experiencia_descripcion,
    lista_experiencia.experiencia_rubro,
    lista_idioma.idioma_idioma,
    lista_idioma.idioma_nivel
FROM
    lista_empleado
    JOIN lista_estudios on lista_estudios.estudios_empleado = lista_empleado.id_empleado
    JOIN lista_experiencia on lista_experiencia.experiencia_empleado = lista_empleado.id_empleado
    JOIN lista_idioma on lista_idioma.idioma_empleado = lista_empleado.id_empleado
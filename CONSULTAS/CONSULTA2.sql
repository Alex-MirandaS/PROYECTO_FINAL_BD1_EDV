CREATE VIEW  curso_periodo as
SELECT curso.id as id_curso
		, curso.nombre as curso_nombre
        , carrera.nombre as carrera
        , seccion.seccion as seccion
        , p.id as id_periodo
        , dia.dia as dia
        , salon.nombre as salon
        , edificio.nombre as edificio
        , catedratico.nombre as catedratico
        , ciclo.id as ciclo_id
        FROM seccion
INNER JOIN periodo_seccion as ps
ON ps.id_seccion = seccion.id -- 
INNER JOIN periodo as p
ON ps.id_periodo = p.id -- 
INNER JOIN curso
ON seccion.id_curso = curso.id --
INNER JOIN ciclo
ON seccion.id_ciclo = ciclo.id --
INNER JOIN salon 
ON seccion.id_salon =salon.id 
INNER JOIN catedratico
ON seccion.id_catedratico = catedratico.codigo --
INNER JOIN edificio
ON salon.id_edificio = edificio.id
INNER JOIN dia_seccion
ON seccion.id = dia_seccion.id_seccion
INNER JOIN dia
ON dia_seccion.id_dia = dia.id --
INNER JOIN curso_pensum
ON curso_pensum.id_curso = curso.id
INNER JOIN pensum
ON curso_pensum.id_pensum = pensum.id
INNER JOIN carrera
ON pensum.id_carrera = carrera.id
;

SELECT * FROM consulta2
WHERE id_periodo = ""
AND ciclo_id = ""
;

SELECT * FROM seccion
INNER JOIN periodo_seccion as ps
ON ps.id_seccion = seccion.id
INNER JOIN periodo as p
ON ps.id_periodo = p.id
INNER JOIN curso
ON seccion.id_curso = curso.id
INNER JOIN ciclo
ON seccion.id_ciclo = ciclo.id
INNER JOIN salon 
ON seccion.id_salon =salon.id 
INNER JOIN catedratico
ON seccion.id_catedratico = catedratico.codigo
INNER JOIN edificio
ON salon.id_edificio = edificio.id
INNER JOIN dia_seccion
ON seccion.id = dia_seccion.id_seccion
INNER JOIN dia
ON dia_seccion.id_dia = dia.id;
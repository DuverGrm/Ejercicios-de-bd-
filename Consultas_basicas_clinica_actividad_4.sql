USE clinica_actividad_4;
/*consulta basica 1*/
SELECT * FROM citas
WHERE id_medico = 2 AND id_servicio = 2;

/*consulta basica 2*/
SELECT * FROM pacientes
WHERE primer_nombre = "Ana" ;

/*consulta basica 3*/
SELECT * FROM citas
WHERE fecha >= '2025-05-01' AND fecha <= '2025-07-25';

/*cosulta basica 4*/
SELECT m.id_medico, m.primer_nombre, m.primer_apelllido, e.nombre_especialidad
FROM medicos m
INNER JOIN especialidades e ON m.id_medico = e.id_medico
WHERE e.nombre_especialidad IN ('Cardiología', 'Neurología', 'Pediatría');

/*consulta basica 5*/
SELECT 
CC AS identificacion,
CONCAT(primer_nombre, ' ', primer_apelllido) AS nombre_completo,
edad
FROM pacientes
WHERE estado = 'Inactivo';




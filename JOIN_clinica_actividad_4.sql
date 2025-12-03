USE clinica_actividad_4;

/*JOIN 1*/
SELECT citas.id_cita,
pacientes.primer_nombre AS nombre_paciente,
pacientes.primer_apelllido AS apellido_paciente,
medicos.primer_nombre AS nombre_medico,
medicos.primer_apelllido AS apellido_medico,
servicios_medicos.procedimiento
FROM citas
INNER JOIN pacientes   
ON citas.id_paciente = pacientes.id_paciente
INNER JOIN medicos 
ON citas.id_medico = medicos.id_medico
INNER JOIN servicios_medicos 
ON citas.id_servicio = servicios_medicos.id_servicio;

/*JOIN 2*/
SELECT medicos.id_medico,
medicos.primer_nombre,
medicos.primer_apelllido,
especialidades.nombre_especialidad
FROM medicos
INNER JOIN especialidades 
ON medicos.id_medico = especialidades.id_medico;

/*JOIN 3*/
SELECT servicios_medicos.id_servicio,
servicios_medicos.procedimiento,
equipos_medicos.id_equipo,
equipos_medicos.funcion
FROM servicios_medicos
INNER JOIN detalles_servicios_equipos
ON servicios_medicos.id_servicio = detalles_servicios_equipos.id_servicio
INNER JOIN equipos_medicos
ON detalles_servicios_equipos.id_equipo = equipos_medicos.id_equipo;


/* JOIN 4*/
SELECT pacientes.id_paciente,
pacientes.primer_nombre,
pacientes.primer_apelllido,
citas.id_cita,
citas.fecha,
citas.hora
FROM pacientes
LEFT JOIN citas 
ON pacientes.id_paciente = citas.id_paciente;


/* JOIN 5*/
SELECT servicios_medicos.id_servicio,
servicios_medicos.procedimiento,
equipos_medicos.id_equipo,
equipos_medicos.funcion
FROM servicios_medicos
LEFT JOIN detalles_servicios_equipos
ON servicios_medicos.id_servicio = detalles_servicios_equipos.id_servicio
LEFT JOIN equipos_medicos
ON detalles_servicios_equipos.id_equipo = equipos_medicos.id_equipo;

 
 /* JOIN 6*/
SELECT medicos.id_medico,
medicos.primer_nombre,
medicos.primer_apelllido,
citas.id_cita,
citas.fecha,
citas.hora
FROM medicos
LEFT JOIN citas 
ON medicos.id_medico = citas.id_medico;


/* JOIN 7*/
SELECT citas.id_cita,
citas.fecha,
citas.hora,
pacientes.id_paciente,
pacientes.primer_nombre,
pacientes.primer_apelllido
FROM citas
LEFT JOIN pacientes 
ON citas.id_paciente = pacientes.id_paciente;

/* JOIN 8*/
SELECT especialidades.id_especialidad,
especialidades.nombre_especialidad,
medicos.id_medico,
medicos.primer_nombre,
medicos.primer_apelllido
FROM especialidades
LEFT JOIN medicos 
ON especialidades.id_medico = medicos.id_medico;

/* JOIN 9*/
SELECT equipos_medicos.id_equipo,
equipos_medicos.funcion,
servicios_medicos.id_servicio,
servicios_medicos.procedimiento
FROM equipos_medicos
LEFT JOIN detalles_servicios_equipos
ON equipos_medicos.id_equipo = detalles_servicios_equipos.id_equipo
LEFT JOIN servicios_medicos
ON detalles_servicios_equipos.id_servicio = servicios_medicos.id_servicio;

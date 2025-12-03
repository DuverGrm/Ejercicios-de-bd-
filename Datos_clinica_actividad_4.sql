USE clinica_actividad_4;
select*from pacientes;

INSERT INTO pacientes VALUES
(1, 'Juan', 'Carlos', 'Gomez', 'Lopez', 'Calle 10 # 20-30', '3001112233', 'juan@gmail.com'),
(2, 'Maria', 'Alejandra', 'Perez', 'Ruiz', 'Carrera 12 # 15-22', '3002223344', 'maria@gmail.com'),
(3, 'Luis', 'Fernando', 'Rodriguez', 'Diaz', 'Barrio Centro', '3003334455', 'luis@gmail.com'),
(4, 'Laura', 'Sofia', 'Martinez', 'Hernandez', 'Calle 45 # 28-15', '3004445566', 'laura@gmail.com'),
(5, 'Andres', 'Felipe', 'Sanchez', 'Castro', 'Carrera 5 # 8-19', '3005556677', 'andres@gmail.com');

UPDATE pacientes
SET
    cc = id_paciente + 1000000,
    estado = CASE
        WHEN id_paciente IN (1, 3, 5, 7, 9) THEN 'Activo'
        ELSE 'Inactivo'
    END,
    edad = 30 + id_paciente
WHERE
    id_paciente <= 10;

INSERT INTO medicos VALUES
(1, 'Carlos', 'Eduardo', 'Rios', 'Gomez', 'c.rios@clinica.com', '3101112233'),
(2, 'Ana', 'Maria', 'Torres', 'Lopez', 'a.torres@clinica.com', '3102223344'),
(3, 'Jorge', 'Luis', 'Ramirez', 'Perez', 'j.ramirez@clinica.com', '3103334455'),
(4, 'Valeria', 'Sofia', 'Mendez', 'Suarez', 'v.mendez@clinica.com', '3104445566'),
(5, 'Sebastian', 'David', 'Ortiz', 'Nuñez', 's.ortiz@clinica.com', '3105556677');

INSERT INTO especialidades (nombre_especialidad, id_medico) VALUES
('Cardiología', 1),
('Odontología', 2),
('Neurología', 3),
('Pediatría', 4),
('Dermatología', 5);

INSERT INTO servicios_medicos VALUES
(1, 'Consulta general'),
(2, 'Limpieza dental'),
(3, 'Electrocardiograma'),
(4, 'Resonancia magnética'),
(5, 'Vacunación');

INSERT INTO citas VALUES
(1, 'Dolor de cabeza', '09:00:00', '2025-11-26 09:00:00', 1, 3, 1),
(2, 'Control médico', '10:30:00', '2025-11-27 10:30:00', 2, 1, 3),
(3, 'Chequeo general', '08:15:00', '2025-11-26 08:15:00', 3, 4, 1),
(4, 'Dolor dental', '11:00:00', '2025-11-28 11:00:00', 4, 2, 2),
(5, 'Vacuna refuerzo', '07:45:00', '2025-11-29 07:45:00', 5, 4, 5);

INSERT INTO equipos_medicos VALUES
(1, 'ECG – Electrocardiógrafo'),
(2, 'Silla Odontológica'),
(3, 'Resonador magnético'),
(4, 'Equipo de vacunación'),
(5, 'Monitor de signos vitales');

INSERT INTO detalles_servicios_equipos VALUES
(1, 3, 1),
(2, 2, 2),
(3, 4, 3),
(4, 5, 4),
(5, 1, 5);
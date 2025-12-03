CREATE DATABASE IF NOT EXISTS clinica_actividad_4;
USE clinica_actividad_4;

CREATE TABLE IF NOT EXISTS pacientes (
id_paciente INT PRIMARY KEY NOT NULL,
primer_nombre VARCHAR(100) NOT NULL,
segundo_nombre VARCHAR(100) NOT NULL,
primer_apelllido VARCHAR(100) NOT NULL,
segundo_apellido VARCHAR(100) NOT NULL,
dirección VARCHAR (100),
telefono VARCHAR(10) NOT NULL,
correo VARCHAR(100) NOT NULL
);

ALTER TABLE pacientes
ADD estado VARCHAR(100) NOT NULL,
ADD edad INT NOT NULL,
ADD CC INT NOT NULL;

CREATE TABLE IF NOT EXISTS medicos (
id_medico INT PRIMARY KEY,
primer_nombre VARCHAR(100) NOT NULL,
segundo_nombre VARCHAR(100) NOT NULL,
primer_apelllido VARCHAR(100) NOT NULL,
segundo_apellido VARCHAR(100) NOT NULL,
correo VARCHAR(100) NOT NULL,
telefono VARCHAR (10)
);

CREATE TABLE IF NOT EXISTS especialidades (
id_especialidad INT PRIMARY KEY AUTO_INCREMENT,
nombre_especialidad VARCHAR(100) NOT NULL,
id_medico INT NOT NULL,

CONSTRAINT fk_especialidad_id_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE IF NOT EXISTS servicios_medicos (
id_servicio INT PRIMARY KEY NOT NULL,
procedimiento VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS citas (
id_cita INT PRIMARY KEY NOT NULL,
motivo TEXT NOT NULL,
hora TIME NOT NULL,
fecha DATETIME NOT NULL,
id_paciente INT NOT NULL,
id_medico INT NOT NULL,
id_servicio INT NOT NULL,

CONSTRAINT fk_cita_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
CONSTRAINT fk_cita_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
CONSTRAINT fk_cita_servicio FOREIGN KEY (id_servicio) REFERENCES servicios_medicos(id_servicio)
);

CREATE TABLE IF NOT EXISTS equipos_medicos (
id_equipo INT PRIMARY KEY NOT NULL,
funcion VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS detalles_servicios_equipos (
id_detalle INT PRIMARY KEY NOT NULL,
id_servicio INT NOT NULL,
id_equipo INT NOT NULL,

CONSTRAINT fk_detalle_servicio FOREIGN KEY (id_servicio) REFERENCES servicios_medicos(id_servicio),
CONSTRAINT fk_detalle_equipo FOREIGN KEY (id_equipo) REFERENCES equipos_medicos(id_equipo)
);





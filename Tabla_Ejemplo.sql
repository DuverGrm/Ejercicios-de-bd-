USE supermarket; 

CREATE TABLE IF NOT EXISTS usuarios(
Id_usuario INT PRIMARY KEY,
nombre_usuario VARCHAR (100) NOT NULL,
nombredps_usuario VARCHAR(100) NULL,
primer_apellido VARCHAR(100) NOT NULL,
segundo_apellido VARCHAR(100) NULL
);

CREATE TABLE IF NOT EXISTS productos(
Id_producto INT PRIMARY KEY,
nombre_producto VARCHAR (100) NOT NULL,
marca_producto VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS facturas(
Id_factura INT AUTO_INCREMENT  PRIMARY KEY,
Id_usuario INT NOT NULL,
Id_producto INT NOT NULL,
precio_total DECIMAL(10,2) NOT NULL

CONSTRAINT 
)
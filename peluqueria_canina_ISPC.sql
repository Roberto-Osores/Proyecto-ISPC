-- creacion de base de datos
CREATE DATABASE peluqueria_canina;

USE peluqueria_canina;

-- creacion de tablas

CREATE TABLE IF NOT EXISTS dueno (
	dni INT PRIMARY KEY UNIQUE NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	telefono VARCHAR(20) NOT NULL,
	direccion VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS perro (
	id_perro INT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (30) NOT NULL,
    fecha_nac DATE NOT NULL,
    sexo ENUM('f', 'm') NOT NULL,
    FK_dueno_dni INT NOT NULL,
    FOREIGN KEY (FK_dueno_dni) REFERENCES dueno (dni)
);

CREATE TABLE IF NOT EXISTS historial (
	id_historial INT PRIMARY KEY UNIQUE AUTO_INCREMENT NOT NULL,
    fecha DATETIME NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    monto FLOAT(10) NOT NULL,
    FK_perro INT NOT NULL,
    FOREIGN KEY (FK_perro) REFERENCES perro (id_perro)
);

INSERT INTO dueno (dni, nombre, apellido, telefono, direccion)
VALUES (27018648, 'Martin', 'Echavarria', '3624305312', 'Bermejo 1859');

INSERT INTO perro (nombre, fecha_nac, sexo, Fk_dueno_dni)
VALUES ('Cleo', '2020-10-10', 'f', 27018648);

-- Ejercicio seleccionado
-- 8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, Fk_dueno_dni)
VALUES (10, 'Popea', '2021-05-08', 'f', 27018648);

INSERT INTO historial (fecha, descripcion, monto, Fk_perro)
VALUES ('2022-05-10', 'corte y planchado', '2500', 10);

-- verifico el contenido de las tablas

SELECT * FROM dueno;
SELECT * FROM perro;
SELECT * FROM historial;


















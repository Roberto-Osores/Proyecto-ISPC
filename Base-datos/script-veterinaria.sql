CREATE DATABASE veterinaria;
USE veterinaria;

/* Tabla dueno */;
CREATE TABLE dueno(
	DNI INT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(15) NOT NULL,
    Telefono INT(15) NOT NULL,
    Direccion VARCHAR(50) NOT NULL,
    PRIMARY KEY(DNI)
);
/* Tabla perro */
CREATE TABLE perro(
	ID_perro INT NOT NULL auto_increment,
    Nombre VARCHAR(15) NOT NULL,
    Fecha_nac DATE NOT NULL,
    Sexo VARCHAR(8) NOT NULL,
    PRIMARY KEY(ID_perro),
    DNI INT,
    FOREIGN KEY(DNI) REFERENCES dueno(DNI)
);
/* Tabla historial */
CREATE TABLE historial(
	ID_historial INT NOT NULL auto_increment,
    Fecha DATE NOT NULL,
    Perro VARCHAR(10) NOT NULL,
    Descripcion VARCHAR(200),
    Monto FLOAT(10) NOT NULL,
    ID_perro INT,
    PRIMARY KEY(ID_historial),
    FOREIGN KEY(ID_Perro) REFERENCES perro(ID_perro)
);
INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (35654347, 'Ricardo', 'Vargas', 4376544,'Belgrano 1278');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Toto', '2010-02-12', 'Macho');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2018-05-14', 'Toto', 'Herida en una horeja', 3200);

INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (25753341, 'Claudia', 'Sastre', 4226743,'Salta 2379');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Malena', '2011-05-11', 'Hembra');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2017-11-21', 'Malena', 'Baño', 1150);

INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (19793549, 'Daniel', 'Pedraza', 4758876,'Pueyrredon 130');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Pupi', '2012-07-15', 'Macho');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2019-03-15', 'Pupi', 'Control rutinario', 700);

INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (18715549, 'Pedro', 'Galvan', 4658879,'Colon 130');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Colita', '2022-01-18', 'Macho');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2022-02-18', 'Colita', 'Vacunacion', 2800);

INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (29763512, 'Maria', 'Perez', 4893423,'Salta 43');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Rabito', '2022-05-15', 'Macho');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2022-07-12', 'Rabito', 'Vacunacion', 2800);

INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (36564492, 'Dana', 'Lopez', 4665434,'La Rioja 453');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Mordelon', '2020-08-23', 'Macho');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2022-07-18', 'Mordelon', 'Herida en la pata delantera', 3300);

INSERT INTO dueno(dni, nombre, apellido, telefono, direccion) VALUES (22132845, 'Lorenzo', 'Cañaz', 4812237,'Ocampo 1230');
INSERT INTO perro(nombre, fecha_nac, sexo) VALUES ('Chiquito', '2021-11-28', 'Macho');
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2022-07-17', 'Chiquito', 'Corte de pelo', 1500);

SELECT * FROM dueno;
SELECT * FROM perro;
SELECT * FROM historial;

SHOW TABLES;

SELECT Apellido FROM dueno WHERE Apellido LIKE 'P%';
SELECT dni FROM dueno WHERE dni > 20000000 AND dni < 30000000;

/* 7 - Obtener los ingresos percibidos en Julio del 2022. */

SELECT Monto FROM Historial WHERE Fecha > '2022-06-30' AND Fecha < '2022-08-01';

/* 10 - Vaciar la tabla historial y resetear el contador del campo ID. */

TRUNCATE historial;
SELECT * FROM historial;

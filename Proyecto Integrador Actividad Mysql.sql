create database Peluqueria;
use Peluqueria;

CREATE TABLE Dueno
(
  DNI INT NOT NULL UNIQUE,
  Nombre    VARCHAR (50) NOT NULL,
  Apellido  VARCHAR (50) NOT NULL,
  Telefono  VARCHAR (40) NOT NULL,
  Direccion VARCHAR (140) NOT NULL,
  PRIMARY KEY (DNI)
);

CREATE TABLE Historial
(
  ID_Historial INT NOT NULL AUTO_INCREMENT,
  Fecha        DATE NOT NULL,
  Perro        INT NOT NULL,
  Descripcion  VARCHAR(320),
  Monto        FLOAT,
  PRIMARY KEY (ID_Historial)
);

CREATE TABLE Perro
(
  ID_Perro INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(50),
  Fecha_nac DATE,
  Sexo      VARCHAR (10) NOT NULL,
  DNI_dueno INT NOT NULL,
  PRIMARY KEY (ID_Perro)
);

ALTER TABLE Perro
  ADD CONSTRAINT FK_Dueno_TO_Perro
    FOREIGN KEY (DNI_dueno)
    REFERENCES Dueno (DNI);

ALTER TABLE Historial
  ADD CONSTRAINT FK_Perro_TO_Historial
    FOREIGN KEY (Perro)
    REFERENCES Perro (ID_Perro);
    
    -- 2 Inserte información del nuevo animal (perro) y datos del dueño.
INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (14177507,"Alicia","Cassini",3512796234,"Jose Melian 1836");
INSERT INTO Perro (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("Mateo","2015-07-19","MACHO",14177507);
INSERT INTO Historial (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2016-08-21","1","Corte,baño",4000);

INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (37853501,"Juan Cruz","Cavatorta",37853501,"Ortiz Montien 2465");
INSERT INTO Perro (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("Luna","2012-10-14","HEMBRA",37853501);
INSERT INTO Historial (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2021-05-19","2","Extirpacion Tumor",12000);

INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION) VALUES (10571746,"Eduardo","Cavatorta",3512403076,"Ramon Munilla 2233");
INSERT INTO Perro (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO) VALUES ("Clarita","2019-08-09","HEMBRA",14177507);
INSERT INTO Historial (FECHA, PERRO, DESCRIPCION, MONTO) VALUES ("2021-05-16","3","Castracion",15000);

	-- Consulta para saber nombres 
select * from dueno;
select * from perro;
select * from historial;

 -- 12 Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
   SELECT MACHO FROM HISTORIAL WHERE FECHA >= '2020-01-01' AND FECHA < '2022-12-31';
   
   -- 6) saber que perros asistieron a la veterinaria en 2022  (Obtengo los id perro, podria buscar tambien select * from historial, para ver los datos completos)
			SELECT PERRO FROM HISTORIAL WHERE FECHA >= '2022-00-00' AND FECHA < '2023-00-00';
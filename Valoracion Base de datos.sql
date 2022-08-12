#Creacion base de datos

create database Pelu_Canina;   
use Pelu_Canina;

#Creacion tablas de la base de datos


CREATE TABLE Dueno
 (
 DNI varchar(8)  primary key not null,
 Nombre varchar (25) not null,
 Apellido Varchar (25) not null,
 Telefono bigint,
 Direccion varchar (50) not null
 );
CREATE TABLE Perro
 (
 ID_Perro int  primary key not null,
 Nombre varchar (25) not null,
 Fecha_nac date not null,
 Sexo varchar(25),
 DNI_Dueno varchar(8) not null,
 INDEX (DNI_Dueno),
  foreign key(DNI_Dueno) references Dueno(DNI)
 );
 CREATE TABLE Historial
 (
 ID_Historial int  primary key not null,
 Fecha date not null,
 Perro int not null,
 Descripcion varchar(250),
 Monto float not null,
 INDEX (Perro),
  foreign key(Perro) references Perro(ID_Perro)
 );
 

#Inserto valores en las tablas 1 dueno y 1 perro


 insert into Dueno(DNI, Nombre, Apellido, Telefono, Direccion) values ("41034786", "Alejandro", "Diaz", "3472548965", "Blas Antonini 573");
 insert into Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) values ("1", "Firulais", "2017-08-24", "Macho", "41034786");


 # Ejercicio N4 Actualizo Fecha_nac 
 
 update Perro set Fecha_nac = "2017-07-12" where ID_Perro = 1;
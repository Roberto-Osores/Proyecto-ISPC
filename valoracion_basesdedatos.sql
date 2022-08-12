# CONSIGNA COMUN
#A. Crear Base de Datos y Tablas según Modelo Relacional
#B1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias
#B2.Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal

create database Peluqueria_Canina;
use Peluqueria_Canina;
create table Dueno(
DNI int not null unique primary key,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(50) not null,
Direccion varchar(100) not null
);
create table Perro(
ID_Perro int not null auto_increment unique primary key,
Nombre varchar(50) not null,
Fecha_nac date not null, /* Formato año-mes-dia YYYY-MM-DD */
Sexo varchar(1), /* Se usara M para machos y H para hembras */
DNI_dueno int,
constraint f_DNI foreign key (DNI_dueno) references Dueno(DNI)
);
create table Historial(
ID_Historial int not null unique auto_increment primary key,
Fecha datetime not null,
Perro int not null,
Descripcion varchar(100),
Monto int not null,
constraint f_ID_Perro foreign key (Perro) references Perro(ID_Perro)
);

insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (33101102, 'Roberto Carlos', 'Osores', '3814221516', 'Pasaje Diaz Velez 283');

insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno)
Values ('Pelor', '2020-01-01', 'M', 33101102);

#CONSIGNA ESPECIFICA
#C. Elegir alguno de los puntos 3 al 12 y agregar al script.
#Yo elegi el punto 9:Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
#Se actualizara la direccion del dueño con DNI 33101102

update Dueno
set Direccion = 'Libertad 123'
where DNI = 33101102;
#Terminado
--CREAR BASE DEDATOS
CREATE DATABASE Clase;

--Clausula USE
USE Clase;

--CREAR TABLA CLIENTES
CREATE TABLE Clientes(
IDCliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
NombreCliente varchar(50) NOT NULL,
Direccion varchar(50) NOT NULL,
Ciudad varchar(50) NOT NULL,
CP varchar(50) NOT NULL,
Pais text NOT NULL
);

SELECT * FROM Clientes;


--CREAR TABLA EMPLEADOS
CREATE TABLE Empleados (
IDEmpleado INT NOT NULL IDentity (1,1) PRIMARY KEY,
Apellido varchar(50) NOT NULL,
Nombre varchar(50) NOT NULL,
Nacimiento datetime NOT NULL,
Notas varchar(50) NOT NULL
);

SELECT * FROM Empleados;

--CREAR TABLAORDENES
CREATE TABLE Ordenes(
IDOrden INT NOT NULL Identity(1,1) PRIMARY KEY,
FechaOrden datetime NOT NULL,
IDCliente INT NOT NULL FOREIGN KEY REFERENCES Clientes(IDCliente),
IDEmpleado INT NOT NULL FOREIGN KEY REFERENCES Empleados(IDEmpleado)
);


CREATE DATABASE ConstructoraUH
USE ConstructoraUH

CREATE TABLE Empleados (
EmpleadoID INT PRIMARY KEY,
Carnet Varchar(20) UNIQUE NOT NULL,
NombreCompleto Varchar(25) NOT NULL,
FechaNacimiento Date Not NULL,
Direccion Varchar(150) DEFAULT 'San Jose',
Telefono Varchar(15) NOT NULL,
CorreoElectronico Varchar(100) UNIQUE NOT NULL,
Salario Decimal(10,2) NOT NULL CHECK (Salario BETWEEN 250000 AND 500000),
CategoriaLaboral ENUM('Administrador' 'Operario', 'Peón') NOT NUL
);


CREATE TABLE PROYECTOS (
ProyectoID INT PRIMARY KEY,
CodigoProyecto Varchar(20) UNIQUE NOT NULL,
FechaInicio DATE NOT NULL,
FechaFinalizacion DATE
);


CREATE TABLE Asignaciones (
AsignacionID INT PRIMARY KEY,
EmpleadoID INT NOT NULL,
ProyectoID INT NOT NULL,
FechaAsignacion DATE DEFAULT CURRENT_DATE,
FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)
);
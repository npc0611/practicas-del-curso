--DEFINE TABLA DE CLIENTES -- Se eligieron estos tipos de datos porque cada tabla tienes sus especificaciones y su primary key
CREATE TABLE Cliente(
IDCliente INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
Nombre varchar(50) NOT NULL,
Perfil_Bio varchar(50) NOT NULL,
Fecha_registro datetime NOT NULL
);

--DEFINE TABLA PRODUCTOS
CREATE TABLE Productos(
IDProducto INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
Descripcin varchar(255) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
Esta_activo varchar(10) NOT NULL
);
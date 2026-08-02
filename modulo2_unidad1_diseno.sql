--DEFINE TABLA DE CLIENTES -- Se eligieron estos tipos de datos porque cada tabla tienes sus especificaciones y su primary key
CREATE TABLE Cliente(
IDCliente INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
Nombre varchar(100) NOT NULL,
Perfil_Bio text NOT NULL,
Fecha_registro date NOT NULL
);

--DEFINE TABLA PRODUCTOS
CREATE TABLE Productos(
IDProducto INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
Descripcin varchar(255) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
Esta_activo varchar(10) NOT NULL
);
-- BodegaTech - Script de Inventario
-- Autor: Natasha Paez
-- Fecha: 02/08/2026

-- PASO 1: CREAR TABLA INVENTARIO

CREATE TABLE Inventario(
    -- INT IDENTITY porque es un identificador único autoincremental.
    id_producto INT IDENTITY(1,1) PRIMARY KEY,

    -- VARCHAR(100) porque el nombre del producto es un texto de longitud variable.
    nombre_producto VARCHAR(100) NOT NULL,

    categoria VARCHAR(50) NOT NULL,

    -- DECIMAL(10,2) porque representa un valor monetario con dos decimales.
    precio_unitario DECIMAL(10,2) NOT NULL,

    stock_actual INT NOT NULL,

    -- INT porque almacena cantidades enteras de unidades.
    stock_minimo INT NOT NULL,

    -- DATE porque únicamente se necesita almacenar la fecha.
    fecha_ingreso DATE NOT NULL,

    -- BIT porque solo admite dos valores: 1 (activo) y 0 (inactivo).
    activo BIT NOT NULL
);

--PASO 2 Y 3: INSERTAR LOS DATOS

INSERT INTO inventario
(nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

-- PASO 4: ACTUALIZAR EL STOCK POR VENTAS

UPDATE inventario
SET stock_actual = stock_actual - 3
WHERE id_producto = 1;

UPDATE inventario
SET stock_actual = stock_actual - 12
WHERE id_producto = 2;

UPDATE inventario
SET stock_actual = stock_actual - 5
WHERE id_producto = 6;

-- PASO 5: MARCAR PRODUCTO COMO INACTIVO

UPDATE inventario
SET activo = 0
WHERE id_producto = 8;

-- PASO 6: VALIDAR LOS DATOS

SELECT * FROM Inventario;

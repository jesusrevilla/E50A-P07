CREATE TABLE clientes (
 cliente_id SERIAL PRIMARY KEY,
 nombre VARCHAR,
 email VARCHAR
);

CREATE TABLE pedidos (
  pedido_id SERIAL PRIMARY KEY,
  cliente_id INT NOT NULL,
  fecha DATE,
  total DECIMAL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE productos (
  producto_id SERIAL PRIMARY KEY,
  nombre VARCHAR,
  precio DECIMAL
);

CREATE TABLE detalles_pedido (
  detalle_id SERIAL PRIMARY KEY,
  pedido_id INT NOT NULL,
  producto_id INT NOT NULL,
  cantidad INT,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
  FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

INSERT INTO Clientes (cliente_id, nombre, email) VALUES
(1, 'Ana Pérez', 'ana.perez@gmail.com'),
(2, 'Carlos López', 'carlos.lopez@yahoo.com'),
(3, 'María García', 'maria.garcia@hotmail.com'),
(4, 'Juan Martínez', 'juan.martinez@gmail.com'),
(5, 'Laura Fernández', 'laura.fernandez@outlook.com');

INSERT INTO Pedidos (pedido_id, cliente_id, fecha, total) VALUES
(1, 1, '2025-01-15', 150.75),
(2, 2, '2025-01-20', 200.50),
(3, 3, '2025-01-25', 300.00),
(4, 4, '2025-02-01', 450.25),
(5, 5, '2025-02-10', 120.00);

INSERT INTO Productos (producto_id, nombre, precio) VALUES
(1, 'Laptop', 1000.00),
(2, 'Smartphone', 750.00),
(3, 'Tablet', 500.00),
(4, 'Monitor', 300.00),
(5, 'Teclado', 50.00);

INSERT INTO Detalles_Pedido (detalle_id, pedido_id, producto_id, cantidad) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 1),
(4, 4, 4, 3),
(5, 5, 5, 4);

INSERT INTO Clientes (cliente_id, nombre, email) VALUES
(6, 'Pedro Sánchez', 'pedro.sanchez@example.com');

INSERT INTO Pedidos (pedido_id, cliente_id, fecha, total) VALUES
(6, 6, '2025-02-15', 1000.00),
(7, 6, '2025-02-16', 750.00),
(8, 6, '2025-02-17', 500.00),
(9, 6, '2025-02-18', 300.00),
(10, 6, '2025-02-19', 50.00);

INSERT INTO Detalles_Pedido (detalle_id, pedido_id, producto_id, cantidad) VALUES
(6, 6, 1, 1),
(7, 7, 2, 1),
(8, 8, 3, 1),
(9, 9, 4, 1),
(10, 10, 5, 1);

SELECT * FROM clientes WHERE nombre LIKE 'A%';
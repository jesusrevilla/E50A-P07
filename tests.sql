-- Ejercicio 1 tabla clientes

-- Prueba unitaria para verificar la unicidad del email
INSERT INTO clientes (email) VALUES ('test@example.com');
-- Esta inserción debería fallar
INSERT INTO clientes (email) VALUES ('test@example.com');


-- Ejercicio 2 tabla facturas

-- Prueba unitaria para verificar la integridad referencial
INSERT INTO clientes (email) VALUES ('cliente1@example.com');
INSERT INTO facturas (cliente_id) VALUES (1);
-- Esta inserción debería fallar porque no existe el cliente_id 2
INSERT INTO facturas (cliente_id) VALUES (2);


-- Ejercicio 3 Restricciones en productos

-- Prueba unitaria para verificar que el nombre no sea nulo y el precio mayor a 10
INSERT INTO productos (nombre, precio) VALUES ('Producto1', 15);
-- Estas inserciones deberían fallar
INSERT INTO productos (nombre, precio) VALUES (NULL, 15);
INSERT INTO productos (nombre, precio) VALUES ('Producto2', 5);


-- Ejercicio 4 Tabla envios

-- Prueba unitaria para verificar los valores permitidos en estado
INSERT INTO envios (estado) VALUES ('preparando');
INSERT INTO envios (estado) VALUES ('en tránsito');
INSERT INTO envios (estado) VALUES ('entregado');
-- Esta inserción debería fallar
INSERT INTO envios (estado) VALUES ('cancelado');
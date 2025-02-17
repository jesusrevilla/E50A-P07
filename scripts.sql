-- create table clientes (id, email)
-- create table clientes

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE
);






-- create table facturas (id, client_id)
-- create table facturas
CREATE TABLE facturas (
    id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clientes(id)
);

-- create table productos
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC CHECK (precio > 10)
);

-- create table envios
CREATE TABLE envios (
    id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    estado VARCHAR(20) CHECK (estado IN ('preparando', 'en tránsito', 'entregado'))
);






-- create table productos (id, nombre, precio)






-- create table envios (id, fecha, estado)
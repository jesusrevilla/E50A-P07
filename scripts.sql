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


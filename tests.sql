-- Ejercicio 1 tabla clientes

-- Prueba para verificar que el email debe ser único
DO $$
BEGIN
    BEGIN
        INSERT INTO clientes (email) VALUES ('test@example.com');
        INSERT INTO clientes (email) VALUES ('test@example.com');
    EXCEPTION WHEN unique_violation THEN
        RAISE NOTICE 'Error esperado: %', SQLERRM;
    END;
END $$;


-- Ejercicio 2 tabla facturas

-- Prueba para verificar la integridad referencial
DO $$
BEGIN
    BEGIN
        -- Inserción válida
        INSERT INTO clientes (email) VALUES ('juan@example.com');
        INSERT INTO facturas (cliente_id) VALUES (1);

        -- Esta inserción debería fallar porque no existe el cliente_id 2
        INSERT INTO facturas (cliente_id) VALUES (2);
    EXCEPTION WHEN foreign_key_violation THEN
        RAISE NOTICE 'Error esperado: %', SQLERRM;
    END;
END $$;


-- Ejercicio 3 Restricciones en productos

-- Prueba unitaria para verificar que el nombre no sea nulo y el precio mayor a 10
-- Prueba para verificar que el nombre no puede ser nulo
DO $$
BEGIN
    BEGIN
        -- Esta inserción debería fallar porque el nombre es nulo
        INSERT INTO productos (nombre, precio) VALUES (NULL, 20);
    EXCEPTION WHEN not_null_violation THEN
        RAISE NOTICE 'Error esperado: %', SQLERRM;
    END;
END $$;

-- Prueba para verificar que el precio debe ser mayor que 10
DO $$
BEGIN
    BEGIN
        -- Esta inserción debería fallar porque el precio es menor o igual a 10
        INSERT INTO productos (nombre, precio) VALUES ('Producto1', 5);
    EXCEPTION WHEN check_violation THEN
        RAISE NOTICE 'Error esperado: %', SQLERRM;
    END;
END $$;

-- Ejercicio 4 Tabla envios

-- Prueba para verificar valores permitidos en estado
DO $$
BEGIN
    BEGIN
        -- Inserciones válidas
        INSERT INTO envios (estado) VALUES ('preparando');
        INSERT INTO envios (estado) VALUES ('en tránsito');
        INSERT INTO envios (estado) VALUES ('entregado');

        -- Esta inserción debería fallar porque el estado no es permitido
        INSERT INTO envios (estado) VALUES ('cancelado');
    EXCEPTION WHEN check_violation THEN
        RAISE NOTICE 'Error esperado: %', SQLERRM;
    END;
END $$;
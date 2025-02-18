-- Prueba unitaria para actualizar el salario de Ana Gómez
DO $$
BEGIN
    -- Verificar que el salario se haya actualizado correctamente
    IF (SELECT salario FROM empleados WHERE nombre = 'Ana Gómez') != 65000 THEN
        RAISE EXCEPTION 'Error: El salario no se actualizó correctamente';
    END IF;
END $$;

-- Prueba unitaria para eliminar a Luis Martínez
DO $$
BEGIN
    -- Verificar que el registro se haya eliminado
    IF EXISTS (SELECT 1 FROM empleados WHERE nombre = 'Luis Martínez') THEN
        RAISE EXCEPTION 'Error: El registro no se eliminó correctamente';
    END IF;
END $$;


CREATE OR REPLACE FUNCTION purgar_asistencia_antigua()
RETURNS VOID AS $$
DECLARE
    registros_borrados INT;
BEGIN
    DELETE FROM asistencia
    WHERE fecha < CURRENT_DATE - INTERVAL '6 months'
    RETURNING id INTO registros_borrados;

    IF FOUND THEN
        RAISE NOTICE 'Registros eliminados: %', registros_borrados;
    ELSE
        RAISE NOTICE 'No se encontraron registros antiguos para eliminar';
    END IF;
END;
$$ LANGUAGE plpgsql;

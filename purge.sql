CREATE OR REPLACE FUNCTION purgar_asistencia_antigua()
RETURNS VOID AS $$
DECLARE
    registros_borrados INT;
BEGIN
    DELETE FROM asistencia
    WHERE fecha < CURRENT_DATE - INTERVAL '6 months'
    RETURNING id INTO registros_borrados;

    IF registros_borrados IS NOT NULL THEN
        RAISE NOTICE 'DELETE executed: % records removed', registros_borrados;
    ELSE
        RAISE NOTICE 'No old records to delete';
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT purgar_asistencia_antigua();

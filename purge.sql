CREATE OR REPLACE FUNCTION purgar_asistencia_antigua()
RETURNS VOID AS $$
DECLARE
    registro_id INT;
BEGIN
    FOR registro_id IN 
        DELETE FROM asistencia
        WHERE fecha < CURRENT_DATE - INTERVAL '6 months'
        RETURNING id
    LOOP
        RAISE NOTICE 'Registro eliminado con ID: %', registro_id;
    END LOOP;
    
    RAISE NOTICE 'DELETE';
END;
$$ LANGUAGE plpgsql;
SELECT purgar_asistencia_antigua();

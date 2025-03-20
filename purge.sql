CREATE OR REPLACE FUNCTION purgar_asistencia_antigua()
RETURNS VOID AS $$
BEGIN
    DELETE FROM asistencia
    WHERE fecha < CURRENT_DATE - INTERVAL '6 months';
END;
$$ LANGUAGE plpgsql;


SELECT purgar_asistencia_antigua();

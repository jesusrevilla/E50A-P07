\echo '\n\tPURGA DE DATOS\n'

DELETE FROM asistencia
WHERE fecha < NOW() - INTERVAL '6 months';

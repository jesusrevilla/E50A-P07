DELETE FROM asistencia WHERE fecha_hora < NOW() - INTERVAL '6 months';

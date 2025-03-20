DELETE FROM asistencia 
WHERE fecha < current_date - interval '6 months';

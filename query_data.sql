\echo '\n\tCONSULTA BASICA\n'

SELECT a.estudiante_id AS Matricula, 
  e.nombre AS Estudiante, 
  g.nombre AS Materia, 
  a.fecha AS Fecha_asistencia, 
  a.presente AS asistencia 
FROM asistencia a 
JOIN estudiantes e ON e.id = a.estudiante_id
JOIN grupos g ON e.grupo_id = g.id;

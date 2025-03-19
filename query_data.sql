SELECT * FROM asistencia;

SELECT e.nombre, a.fecha, a.presente
FROM estudiantes e
JOIN asistencia a ON e.id = a.estudiante_id
WHERE a.fecha = '2025-03-18';
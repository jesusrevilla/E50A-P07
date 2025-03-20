SELECT * FROM estudiantes;
SELECT * FROM grupos;

SELECT a.fecha,g.materia,e.nombre,a.presente 
FROM asistencia a
JOIN grupos g ON a.id_curso = g.id
JOIN estudiantes e ON a.estudiante = e.matricula;

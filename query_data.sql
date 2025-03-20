-- fetch 
SELECT * FROM grupos;
-- fetch 
SELECT * FROM estudiantes;

SELECT * FROM asistencia;

SELECT * FROM asistencia a
JOIN estudiantes e ON a.id_estudiantes = e.id;

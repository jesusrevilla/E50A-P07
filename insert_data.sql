\echo '\n\tINSERCION DE DATOS\n'

-- Insertar registros en la tabla grupos (separado en varios INSERTs)
INSERT INTO grupos (nombre, descripcion) VALUES ('Matemáticas', 'Curso de matemáticas para primer semestre');
INSERT INTO grupos (nombre, descripcion) VALUES ('Ciencias', 'Curso de ciencias para primer semestre');
INSERT INTO grupos (nombre, descripcion) VALUES ('Filosofía', 'Curso de letras para segundo semestre');

-- Insertar registros en la tabla estudiantes (separado en varios INSERTs)
INSERT INTO estudiantes (nombre, fecha_nacimiento, grupo_id) VALUES ('Juan Pérez', '2003-05-15', 1);
INSERT INTO estudiantes (nombre, fecha_nacimiento, grupo_id) VALUES ('Ana García', '2002-11-25', 3);
INSERT INTO estudiantes (nombre, fecha_nacimiento, grupo_id) VALUES ('Luis Ramírez', '2001-07-30', 2);

-- Insertar registros en la tabla asistencia (separado en varios INSERTs)
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (1, '2025-03-18', TRUE);
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (2, '2025-03-18', FALSE);
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (3, '2025-03-18', TRUE);
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (3, '2024-03-18', TRUE);

\echo '\n\tINSERCION DE DATOS\n'

INSERT INTO grupos (nombre, descripcion) VALUES
('Matemáticas', 'Curso de matemáticas para primer semestre'),
('Ciencias', 'Curso de ciencias para primer semestre'),
('Filosofia', 'Curso de letras para segundo semestre');

INSERT INTO estudiantes (nombre, fecha_nacimiento, grupo_id) VALUES
('Juan Pérez', '2003-05-15', 1),
('Ana García', '2002-11-25', 3),
('Luis Ramírez', '2001-07-30', 2);

INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES
(1, '2025-03-18', TRUE),
(2, '2025-03-18', FALSE),
(3, '2025-03-18', TRUE),
(3, '2024-03-18', TRUE);




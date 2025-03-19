INSERT INTO grupos (nombre) VALUES ('Grupo A');
INSERT INTO grupos (nombre) VALUES ('Grupo B');
INSERT INTO grupos (nombre) VALUES ('Grupo C');
INSERT INTO grupos (nombre) VALUES ('Grupo D');


INSERT INTO estudiantes (nombre, grupo_id) VALUES ('Juan Pérez', 1);
INSERT INTO estudiantes (nombre, grupo_id) VALUES ('Ana López', 2);
INSERT INTO estudiantes (nombre, grupo_id) VALUES ('Carlos García', 3);
INSERT INTO estudiantes (nombre, grupo_id) VALUES ('María Fernández', 4);


INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (1, '2025-03-18', TRUE);
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (2, '2025-03-18', FALSE);
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (3, '2025-03-18', TRUE);
INSERT INTO asistencia (estudiante_id, fecha, presente) VALUES (4, '2025-03-18', TRUE);



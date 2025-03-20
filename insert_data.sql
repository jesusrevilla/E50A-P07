-- insert
INSERT INTO grupos(nombre, clave) VALUES ('Matematicas', 'E50A');
INSERT INTO grupos(nombre, clave) VALUES ('Quimica', 'E20A');
INSERT INTO grupos(nombre, clave) VALUES ('Fisica', 'E19A');
INSERT INTO grupos(nombre, clave) VALUES ('Programacion', 'E34A');

 -- insert
INSERT INTO estudiantes(nombre, id_grupos) VALUES ('Antonio Morales', 1);
INSERT INTO estudiantes(nombre, id_grupos) VALUES ('Araujo', 2);
INSERT INTO estudiantes(nombre, id_grupos) VALUES ('Sebas', 3);
INSERT INTO estudiantes(nombre, id_grupos) VALUES ('Alejandro', 4);

 
  -- insert
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (1, '2025-03-19', true);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (2, '2025-03-19', false);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (3, '2025-03-19', true);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (4, '2025-03-19', true);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (1, '2025-03-24', true);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (2, '2025-03-24', false);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (3, '2025-03-24', true);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (4, '2025-03-24', true);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (1, '2022-03-04', false);
INSERT INTO asistencia(id_estudiantes, fecha, presente) VALUES (2, '2022-03-04', false);

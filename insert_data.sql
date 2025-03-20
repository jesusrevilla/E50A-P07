INSERT INTO estudiante (nombre, apellido,fecha_de_incripion)
VALUES 
  ('Juan',' Perez', '2024-03-10'),
  ('Maria' ,'Lopez', '2023-08-05'),
  ('Carlos', 'Ruiz', '2023-12-15'),
  ('Jose', 'Sánchez', '2023-12-15'),
  ('Ana', 'Gómez', '2022-11-22');

INSERT INTO profesore (nombre,apellido, salario, fecha_de_contrato)
VALUES 
  (' Alberto ','Méndez', 50000.00, '2020-06-15'),
  (' Lucia',' Sánchez', 48000.00, '2022-09-10'),
  (' Marco',' Ruiz', 48000.00, '2022-09-10'),
  (' Sebastian',' Lopez', 48000.00, '2022-09-10'),
  (' Juan',' Fernández', 55000.00, '2019-05-01');

INSERT INTO cursos (nombre, id_profesor)
VALUES 
  ('Matemáticas', 1),
  ('Historia', 2),
  ('Física', 3),
  ('Español', 4),
  ('Ed_Fisica', 5);
  


INSERT INTO asistencia (id_estudiante, id_curso, fecha_hora)
VALUES 
  (1, 1, '2025-03-10 09:00:00'),
  (2, 2, '2025-03-12 10:00:00'),
  (4, 1, '2024-08-15 11:00:00'),
  (3, 3, '2025-03-14 14:00:00'),
  (1, 2, '2024-07-20 09:30:00'),
  (2, 3, '2024-01-25 10:30:00');



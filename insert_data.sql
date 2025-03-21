INSERT INTO grupos(nombre_grupo, clave_grupo) VALUES 
('Matemáticas IV', 'E20A'),
('Base de datos', 'E25A'),
('Telematica I', 'E03A');


INSERT INTO estudiantes(nombre_estudiante, carrera, ID_Personal, Id_grupo) VALUES 
('César Alejandro García Martínez', 'ITEM', 170973, 1),
('Alejandro Cardenas Lopez', 'ITEM', 178545, 2),
('Antonio Franco Pardo', 'ITI', 171213, 3);


INSERT INTO asistencias(fecha, hora, asis, ID_estudiante) VALUES
('2025-03-19', '18:05:15', true,1),
('2025-03-19', '18:06:26', true,2),
('2025-03-19', '18:10:52', false,3),


('2025-03-18', '18:05:15', true, 1),
('2025-03-18', '18:06:26', false, 2),
('2025-03-18', '18:10:52', true, 3),


('2024-08-19', '18:05:15', true,1),
('2024-08-19', '18:06:26', true,2),
('2024-08-19', '18:10:52', true,3),

('2024-07-18', '18:05:15', true,1),
('2024-07-18', '18:06:26', true,2),
('2024-07-18', '18:10:52', true,3);


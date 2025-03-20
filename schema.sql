--  Universidad Politécnica de San Luis Potosí
--            19 de Marzo, 2025
--               Base de Datos
--      Christian Alejandro Cárdenas Rucoba

--          Ejercicios de tipos de datos

CREATE TABLE estudiantes(
  matricula VARCHAR PRIMARY KEY,
  nombre VARCHAR
);

CREATE TABLE grupos(
  id SERIAL PRIMARY KEY,
  materia VARCHAR,
  periodo VARCHAR
);

CREATE TABLE asistencia(
  id_curso INT,
  FOREIGN KEY(id_curso) REFERENCES grupos(id),
  estudiante VARCHAR,
  FOREIGN KEY(estudiante) REFERENCES estudiantes(matricula),
  fecha DATE,
  presente BOOLEAN
);

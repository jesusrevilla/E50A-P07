CREATE TABLE estudiante(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  fecha_de_incripion DATE 
);

CREATE TABLE profesore (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  salario DECIMAL,
  fecha_de_contrato DATE 
);

CREATE TABLE cursos (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  id_profesor INT,
  FOREIGN KEY (id_profesor) REFERENCES profesore(id)
);

CREATE TABLE asistencia (
  id SERIAL PRIMARY KEY,
  id_estudiante INT,
  id_curso INT,
  fecha_hora TIMESTAMP,
  FOREIGN KEY (id_estudiante) REFERENCES estudiante(id),
  FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

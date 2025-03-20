
-- create
CREATE TABLE grupos(
  id SERIAL PRIMARY KEY,
  nombre varchar(30) NOT NULL,
  clave varchar(30) NOT NULL
);

-- create
CREATE TABLE estudiantes (
  id SERIAL PRIMARY KEY,
  nombre varchar(30) NOT NULL,
  id_grupos INT,
  FOREIGN KEY (id_grupos) REFERENCES grupos(id)
);

-- create
CREATE TABLE asistencia (
  id SERIAL PRIMARY KEY,
  id_estudiantes INT,
  FOREIGN KEY (id_estudiantes) REFERENCES estudiantes(id),
  fecha DATE NOT NULL,
  presente boolean
);

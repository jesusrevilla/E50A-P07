CREATE TABLE grupos (
  Id SERIAL PRIMARY KEY,
  nombre_grupo VARCHAR(30) NOT NULL,
  clave_grupo   VARCHAR(10)
);

CREATE TABLE estudiantes (
  Id SERIAL PRIMARY KEY,
  nombre_estudiante VARCHAR(50) NOT NULL,
  carrera VARCHAR(15) NOT NULL,
  ID_Personal INT NOT NULL,
  Id_grupo INT NOT NULL,
  FOREIGN KEY (Id_grupo) references grupos(Id)
);

CREATE TABLE asistencia (
  Id SERIAL PRIMARY KEY,
  fecha VARCHAR(30) NOT NULL,
  hora VARCHAR(30) NOT NULL,
  asis boolean,
  ID_estudiante INT NOT NULL,
  FOREIGN KEY (ID_estudiante)references estudiantes(Id)
  
);

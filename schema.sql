\echo '\n\tCREACION DE BASE DE DATOS\n'
CREATE DATABASE escuela;
\c escuela;

\echo '\n\tTABLAS INICIALES\n'

CREATE TABLE grupos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    grupo_id INT NOT NULL,
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
);

CREATE TABLE asistencia (
    id SERIAL PRIMARY KEY,
    estudiante_id INT,
    fecha DATE NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id)
);

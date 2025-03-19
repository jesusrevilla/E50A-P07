
CREATE TABLE grupos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    grupo_id INTEGER REFERENCES grupos(id)
);

CREATE TABLE asistencia (
    id SERIAL PRIMARY KEY,
    estudiante_id INTEGER REFERENCES estudiantes(id),
    fecha DATE,
    presente BOOLEAN
);
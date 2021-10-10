SET TRANSACTION READ WRITE NAME primera_transaccion;
INSERT INTO nombre_tabla (columna1, columna2, columna3) VALUES (valor1,
valor2, valor3);
SAVEPOINT registro_ingresado;

UPDATE nombre_tabla SET columna1=valor_nuevo WHERE condicion;
ROLLBACK TO registro_ingresado;
COMMIT;

********************

-- Caso 1
-- Creacion de Base de Datos
CREATE DATABASE caso_1_empresa;


CREATE TABLE departamentos(
    id INT,
    nombre VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE trabajadores(
    id INT,
    rut VARCHAR(15),
    nombre VARCHAR(50),
    direccion VARCHAR(250),
    departamento_id INT REFERENCES departamentos(id),
    PRIMARY KEY(id)
);

CREATE TABLE liquidaciones(
    id INT,
    fecha DATE,
    url_archivo VARCHAR(50),
    trabajador_id INT REFERENCES trabajadores(id),
    PRIMARY KEY(id)
)





//////////////


CREATE DATABASE caso_2_escuela;


CREATE TABLE cursos(
    id INT,
    nombre VARCHAR(80),
    PRIMARY KEY(id)
);

CREATE TABLE departamentos(
    id INT,
    nombre VARCHAR(80),
    PRIMARY KEY(id)
);


CREATE TABLE alumnos(
    id INT,
    rut VARCHAR(15),
    nombre VARCHAR(50),
    curso_id INT REFERENCES cursos(id),
    PRIMARY KEY(id)
);

CREATE TABLE profesores(
    id INT,
    nombre VARCHAR(50),
    departamento_id INT REFERENCES departamentos(id),
    PRIMARY KEY(id)
);


CREATE TABLE pruebas(
    id INT,
    alumno_id INT REFERENCES alumnos(id),
    profesor_id INT REFERENCES profesores(id),
    puntaje INT
);
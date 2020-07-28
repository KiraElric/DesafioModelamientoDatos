CREATE DATABASE institucion_educacional;

\c institucion_educacional;

CREATE TABLE curso(
  codigo SERIAL,
  nombre VARCHAR NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE departamento(
  codigo SERIAL,
  nombre VARCHAR NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE alumno(
  rut INT,
  codigo_curso INT NOT NULL,
  nombre VARCHAR NOT NULL,
  PRIMARY KEY (rut),
  FOREIGN KEY (codigo_curso) REFERENCES curso(codigo)
);

CREATE TABLE profesor(
  rut INT,
  codigo_departamento INT NOT NULL,
  nombre VARCHAR NOT NULL,
  PRIMARY KEY (rut),
  FOREIGN KEY (codigo_departamento) REFERENCES departamento(codigo)
);

CREATE TABLE prueba(
  codigo SERIAL,
  rut_alumno INT NOT NULL,
  rut_profesor INT NOT NULL,
  puntaje SMALLINT DEFAULT(0),
  PRIMARY KEY (codigo),
  FOREIGN KEY (rut_alumno) REFERENCES alumno(rut),
  FOREIGN KEY (rut_profesor) REFERENCES profesor(rut)
);


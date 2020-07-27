CREATE DATABASE empresa;

\c empresa;

CREATE TABLE departamento(
  codigo SERIAL,
  nombre VARCHAR NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE trabajador(
  rut INT,
  codigo_departamento INT NOT NULL,
  nombre VARCHAR NOT NULL,
  direccion VARCHAR NOT NULL,
  PRIMARY KEY (rut),
  FOREIGN KEY (codigo_departamento) REFERENCES departamento(codigo)
);

CREATE TABLE liquidacion(
  codigo SERIAL,
  rut_trabajador INT NOT NULL,
  detalle TEXT NOT NULL,
  url_drive VARCHAR NOT NULL,
  PRIMARY KEY (codigo),
  FOREIGN KEY (rut_trabajador) REFERENCES trabajador(rut)
);

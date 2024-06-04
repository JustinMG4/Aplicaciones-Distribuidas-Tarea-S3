-- Crear primera tabla para la particion
CREATE TABLE alumno_1 LIKE alumno;
-- Crear segunda tabla
CREATE TABLE alumno_2 LIKE alumno;

-- Insetar datos en la tabla alumno_1 cuando el codigo esté entre 1 y 500
INSERT INTO alumno_1 SELECT* FROM alumno WHERE codigo <= 5 

-- Insertar datos en la tabla alumno_2 cuando el codigo esté entre 501 y 1000
INSERT INTO alumno_1 SELECT* FROM alumno WHERE codigo > 5 

-- Creamos una vista
CREATE VIEW Fragmentacion_Alumnos AS
SELECT * FROM alumno_1
UNION ALL
SELECT * FROM alumno_2;

-- ver la vista creada
SELECT * FROM fragmentacion_alumnos

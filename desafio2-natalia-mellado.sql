CREATE DATABASE desafio2_natalia_mellado_000;

CREATE TABLE INSCRITOS(
    cantidad INT, 
    fecha DATE, 
    fuente VARCHAR(50)
);

INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 56, '01/01/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 81, '01/02/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 91, '01/03/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 45, '01/04/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 33, '01/05/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 12, '01/06/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 24, '01/07/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente) VALUES ( 99, '01/08/2021', 'P�gina' );

select * from INSCRITOS;

-- ¿Cuántos registros hay?
SELECT COUNT(*) AS "Cantidad de registros"
from INSCRITOS;

-- ¿Cuántos inscritos hay en total?
SELECT SUM(cantidad) AS "Total de inscritos"
from INSCRITOS;

-- ¿Cuál o cuáles son los registros de mayor antiguedad?
SELECT * FROM INSCRITOS
WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);

-- ¿Cuántos inscritos hay por dáa?
SELECT fecha, SUM(cantidad) AS "Inscritos por día"
from INSCRITOS
GROUP BY fecha;

-- ¿Qué día se inscribieron la mayor cantidad de personas y 
-- cuántas personas se inscribieron en ese día?
SELECT fecha, SUM(cantidad) as "Total de inscritos"
from INSCRITOS
GROUP BY fecha
ORDER BY "Total de inscritos" DESC
FETCH FIRST 1 ROW ONLY;




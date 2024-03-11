CREATE TABLE INSCRITOS(
    cantidad INT, 
    fecha DATE, 
    fuente VARCHAR(50)
);

INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 56, '01/01/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 81, '01/02/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 91, '01/03/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 45, '01/04/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 33, '01/05/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/06/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 24, '01/07/2021', 'P�gina' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 99, '01/08/2021', 'P�gina' );

select * from INSCRITOS;

-- �Cu�ntos registros hay?
SELECT COUNT(*) AS "Cantidad de registros"
from INSCRITOS;

-- �Cu�ntos inscritos hay en total?
SELECT SUM(cantidad) AS "Total de inscritos"
from INSCRITOS;

-- �Cu�l o cu�les son los registros de mayor antig�edad?
SELECT * FROM INSCRITOS
WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);

-- �Cu�ntos inscritos hay por d�a?
SELECT fecha, SUM(cantidad) AS "Inscritos por d�a"
from INSCRITOS
GROUP BY fecha;

-- �Qu� d�a se inscribieron la mayor cantidad de personas y cu�ntas personas se inscribieron en ese d�a?
SELECT fecha, SUM(cantidad) as "Total de inscritos"
from INSCRITOS
GROUP BY fecha
ORDER BY "Total de inscritos" DESC
FETCH FIRST 1 ROW ONLY;




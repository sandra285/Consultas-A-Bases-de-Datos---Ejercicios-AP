/* Una empresa tiene registrados a sus clientes en una tabla llamada clientes. También tiene una tabla "provincias" donde registra los nombres de las provincias. En base a los datos cargados,  queremos saber: */

/* 1 - ¿En cuáles provincias no tenemos clientes? */
SELECT p.codigo, p.nombre
FROM clientes AS c RIGHT JOIN provincias AS p
ON c.codigoProvincia = p.codigo
WHERE c.codigoProvincia IS NULL;

/* 2 - ¿Qué provincias tienen clientes? */
SELECT DISTINCT p.codigo, p.nombre
FROM clientes AS c JOIN provincias AS p
ON c.codigoProvincia = p.codigo;
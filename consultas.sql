/* 1 - Listar los nombres de los usuarios*/
SELECT nombre FROM practicaap.usuarios;

/* 2 - Calcular el saldo máximo de los usuarios de sexo “Mujer” */
SELECT max(saldo) FROM usuarios
WHERE sexo="M";

/* 3 - Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY */
SELECT nombre, telefono FROM usuarios
WHERE marca='NOKIA' || marca='BLACKBERRY' || marca='SONY';
/* Otra forma */
SELECT nombre, telefono FROM usuarios
WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

/* 4- Contar los usuarios sin saldo o inactivos */
SELECT COUNT(*) FROM usuarios
WHERE saldo = 0 || activo = 0;

/* 5 - Listar el login de los usuarios con nivel 1, 2 o 3 */
SELECT usuario FROM usuarios
WHERE nivel IN('1', '2', '3');

/* 6 - Listar los números de teléfono con saldo menor o igual a 300 */
SELECT telefono FROM usuarios
WHERE saldo <= 300;

/* 7 - Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL */
SELECT SUM(saldo) FROM usuarios
WHERE compania = 'NEXTEL';

/* 8 - Contar el número de usuarios por compañía telefónica */
SELECT compania, COUNT(usuario) FROM usuarios
group by compania;

/* 9 - Contar el número de usuarios por nivel */
SELECT nivel, COUNT(usuario) FROM usuarios
group by nivel;

/* 10 - Listar el login de los usuarios con nivel 2 */
SELECT usuario FROM usuarios
WHERE nivel = 2;

/* 11 - Mostrar el email de los usuarios que usan gmail */
SELECT email FROM usuarios
WHERE email LIKE '%gmail%';

/* 12 - Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA */
SELECT nombre, telefono FROM usuarios
WHERE marca IN ('LG', 'SAMSUNG', 'MOTOROLA');

/* 13 - Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG */
SELECT nombre, telefono FROM usuarios
WHERE marca NOT IN ('LG', 'SAMSUNG');

/* 14 - Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL */
SELECT usuario, telefono FROM usuarios
WHERE compania = 'IUSACELL';

/* 15 - Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL */
SELECT usuario, telefono FROM usuarios
WHERE compania <> 'TELCEL';

/* 16 - Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA */
SELECT AVG(saldo) FROM usuarios
WHERE marca = 'Nokia';

/* 17 - Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL */
SELECT usuario, telefono FROM usuarios
WHERE compania IN ('IUSACELL', 'AXEL');

/* 18 - Mostrar el email de los usuarios que no usan yahoo */
SELECT email FROM usuarios
WHERE email NOT LIKE '%yahoo%';

/* 19 - Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL */
SELECT usuario, telefono FROM usuarios
WHERE compania NOT IN ('TELCEL', 'IUSACELL');

/* 20 - Listar el login y teléfono de los usuarios con compañía telefónica UNEFON */
SELECT usuario, telefono FROM usuarios
WHERE compania = 'UNEFON';
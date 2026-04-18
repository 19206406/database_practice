
-- Se hace a través de la palabra clave AS 
-- Se puede usar para renombrar una tabla o una columna en una consulta 

-- Renombrar una columna 


SELECT first_name, salary AS salario, email FROM hr.employees;

-- si el alias tiene más de una palabra podemos utilizar comillas dobles 
SELECT street_address AS direcion, postal_code AS "código postal", city AS ciudad 
FROM hr.LOCATIONS;

-- ejercicio de la tabla dual 
SELECT 3 + 4 AS resultado FROM dual; 
SELECT 'Hola, ¿como estan?' AS saludo FROM dual; 

-- El uso del alias en tablas se usara en subconsultas 
-- y otras operaciones más avanzadas






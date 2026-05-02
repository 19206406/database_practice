-- SCHEMA HR

-- OPERACIONES SIN CAMPOS 
SELECT 45 * 12 FROM dual; 
SELECT 123 / 3 FROM dual; 
SELECT 500 - 495 FROM dual; 
SELECT 120 + 220 FROM dual; 

SELECT employee_id, first_name, last_name, salary FROM hr.employees; 


SELECT first_name, last_name, salary + 1000 AS "salary + 1000" FROM hr.employees; 

SELECT first_name, salary * 12 AS salario_x_12 FROM hr.employees; 

SELECT first_name, salary + (salary * commission_pct) salario_con_comision 
FROM hr.employees;

-- Se pueden hacer operaciones de diferente tipo aunque se debe de tener en cuenta
-- que las columnas deben de ser de tipo numerico 

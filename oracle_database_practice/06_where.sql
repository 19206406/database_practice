-- SCHEMA HR 
-- USO DE WHERE 

SELECT * FROM hr.employees;

-- SALARIO QUE ESTA DENTRO DE ESTA RANGO 
SELECT employee_id, first_name, last_name, email, salary FROM hr.employees 
    WHERE salary >= 2345 AND salary < 5000; 
--    WHERE salary BETWEEN 2345 AND 5000; 

-- EMPLEADOS QUE TIENEN COMO MANAGER ID A EL 103 
SELECT employee_id, first_name, last_name, email FROM hr.employees 
    WHERE manager_id = 103;

-- personal del manager 148 o del departamento 80 
SELECT employee_id, first_name, last_name, email FROM hr.employees 
    WHERE manager_id = 148 OR department_id = 80;

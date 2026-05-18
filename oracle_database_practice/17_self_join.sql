-- SCHEMA HR 
-- ENTIDAD QUE TIENE UNA RELACIÓN ASÍ MISMA 

SELECT emp.first_name AS empleado,
       j.first_name AS supervisor
FROM hr.employees emp
JOIN hr.employees j
ON j.manager_id = emp.employee_id;
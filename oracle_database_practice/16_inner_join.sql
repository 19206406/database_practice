-- SCHEME HR 

-- INNER JOIN 
-- INNER JOIN SENCILLO ENTRE DOS TABLAS 
SELECT 
    emp.employee_id, emp.first_name, emp.last_name, emp.email, emp.phone_number, 
    dep.department_id, dep.department_name 
FROM hr.employees emp
INNER JOIN hr.departments dep 
    ON dep.department_id = emp.department_id;

-- INNER JOIN CON MULTIPLES TABLAS 
SELECT 
    emp.employee_id, emp.first_name, emp.last_name, emp.email, emp.phone_number, 
    dep.department_id, dep.department_name, jh.start_date, jh.end_date 
FROM hr.employees emp
INNER JOIN hr.departments dep 
    ON emp.department_id = dep.department_id
INNER JOIN hr.job_history jh 
    ON jh.department_id = dep.department_id; 

-- SCHEMA CO 

SELECT cus.customer_id, cus.email_address, cus.full_name, ord.order_status
FROM co.customers cus 
INNER JOIN co.orders ord 
    ON ord.customer_id = cus.customer_id
ORDER BY cus.customer_id; 
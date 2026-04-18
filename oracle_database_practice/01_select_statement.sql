
-- Traer todas los registros de una tabla con totas sus columnas 
SELECT * FROM hr.employees; 
SELECT * FROM hr.locations; 
SELECT * FROM hr.regions; 

-- Traer todos los registros de una tabla pero con columnas en especifico 
SELECT employee_id, first_name, last_name, email FROM hr.employees; 
SELECT location_id, street_address, city FROM hr.locations;

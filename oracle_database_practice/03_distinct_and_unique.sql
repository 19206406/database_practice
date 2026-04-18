
SELECT * FROM hr.employees; 
SELECT * FROM hr.countries; 

-- trae los salarios distintos de los empleados 
SELECT DISTINCT salary FROM hr.employees; 

-- trae los street_address distintos de la tabla locations  
SELECT DISTINCT street_address FROM hr.locations; 

/* Tambien hay una sentencia llamada UNIQUE que hace lo mismo que DISTINCT 
pero no hace parte del estandar SQL sino que hace parte de Oracle 
por ende es mejor utilizar DISTINCT */ 

SELECT UNIQUE salary FROM hr.employees; 

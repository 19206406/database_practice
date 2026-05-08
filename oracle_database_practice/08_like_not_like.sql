-- SCHEMA (SH) 
-- LIKE Y NOT LIKE FILTROS PARA FORMATOS DE BUSQUEDA NO FIJOS

SELECT * FROM sh.products; 

-- LOS CADENAS QUE INGRESEMOS DEBEN DE COINCIDIR OSEA 
-- SI ESTAN EN MINUSCULA O MAYUSCULA

-- INICIO CON UN PATRON EN FORMA DE FILTRO  
SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name LIKE 'P%';

SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name LIKE 'Cric%';

-- FIN DE UN PATRON EN FORMA DE FILTRO 

SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name LIKE '%r';

SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name LIKE '%Ball';

-- COINCIDENCIA DE UN PATRON EN CUALQUIER LUGAR 
SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name LIKE '%as%';

SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name LIKE '%ed%';

-- PODEMOS AGREGAR EL USO DE NOT QUE NIEGA LA CONDICION 

-- NINGUN PRODUCTO CON R 
SELECT prod_id, prod_name prod_category, prod_status FROM sh.products
    WHERE prod_name NOT LIKE '%r%';

-- RESUMEN 
-- %{expresion} --> Patron al final de la cadena 
-- {expresion}% --> Patron al inicio de la cadena 
-- %{expresion}% --> Patron en cualquier lugar de la cadena 

-- Tambien podemos encontrar el uso del _ pero creo es complicarse uno demasiado

-- Schema (SH) 
SELECT * FROM sh.costs;

-- precio de una unidad de los productos entre 800 y 900 $ 
SELECT prod_id, channel_id, unit_cost, unit_price FROM sh.costs 
    WHERE unit_cost BETWEEN 800 AND 900; 


-- Si se requiere que sea todo lo contrario que sea diferente a precios 
-- de 800 y 900

SELECT prod_id, channel_id, unit_cost, unit_price FROM sh.costs 
    WHERE unit_cost NOT BETWEEN 800 AND 900; 

-- Agregar nueva formas de querys para el between 
 
SELECT prod_id, channel_id, unit_cost, unit_price FROM sh.costs 
    WHERE (unit_cost BETWEEN 900 AND 1000) AND (unit_price BETWEEN 1000 AND 1200); 


SELECT * FROM sh.products; 

-- SE PUEDE REALIZAR BETWEEN CON CARACTERES DE LAS COLUMNAS 
SELECT prod_id, prod_name, prod_category, prod_status 
    FROM sh.products WHERE prod_name BETWEEN 'L' AND 'S'; 

-- EL USO DE BETWEEN SE PUEDE EXTENDER A DATOS NUMERICOS 
-- FECHAS, TIEMPO Y TEXTO 

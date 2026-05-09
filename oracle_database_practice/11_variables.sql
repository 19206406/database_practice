-- SCHEMA SALES HISTORY (SH) 

-- VARIABLES 
-- SE DEFINEN CON & 
-- HAY DOS TIPOS DE VARIABLES CON UN SOLO & SON TEMPORALES SU VALOR CAMBIA 
-- EN CADA CONSULTA MIENTRAS CON && SON VARIABLE FIJAS 
-- ADEMÁS SI LAS VARIABLES VAN A ALMACENAR UN VALOR NÚMERICO NO NECESITAN 
-- NADA MÁS QUE EL & Y EL NOMBRE
-- PERO SI ES PARA ALMACENAR CARACTERES SE HACE ENTRE COMILLAS SIMPLES ''

SELECT * FROM sh.products;

-- VARIABLE PRICE EN CONSULTA 
SELECT prod_id, prod_name, prod_category, prod_status, prod_total, prod_min_price 
    FROM sh.products 
    WHERE prod_min_price < &price; 

-- VARIAS VARIABLES EN CONSULTA -- NO FUNCIONA PERO LO DEBERIA DE HACER 
SELECT prod_id, prod_name, prod_category, prod_status, prod_total, prod_min_price 
    FROM sh.products 
    WHERE &price1 > prod_min_price AND prod_min_price < &price2;

-- BUSQUEDA POR CARACTERES
SELECT prod_id, prod_name, prod_category, prod_status, prod_total, prod_min_price 
    FROM sh.products 
    WHERE prod_name = '&name'; 

-- LAS VARIABLES TAMBIEN SE PUEDEN UTILIZAR PARA DEFINIR LOS CAMPOS QUE QUEREMOS VER
-- EN CONSULTAS PERO NO ACONSEJO HACER ESTO 
-- Y LAS VARIABLES CONSTANTES SON LO MISMO PERO ESTE TOMARA EL MISMO VALOR PARA 
-- SIEMPRE
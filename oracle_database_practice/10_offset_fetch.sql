-- SCHEMA SALES HISTORY (SH)

-- PAGINACIÓN 

-- SE SALTA LOS DIEZ PRIMEROS ELEMENTOS Y LUEGO ME TRAE LOS PROXIMOS 10 ELEMENTOS 
SELECT prod_id, prod_name, prod_category, prod_status, prod_total
    FROM sh.products ORDER BY prod_name
    OFFSET 10 ROWS 
    FETCH NEXT 10 ROWS ONLY; 

SELECT prod_id, prod_name, prod_category, prod_status, prod_total
    FROM sh.products ORDER BY prod_name
    OFFSET 0 ROWS -- NUMERO DE ELEMENTOS QUE SE SALTA 
    FETCH NEXT 20 ROWS ONLY; -- CUANTOS ELEMENTOS TRAIGO DESPUES 
    -- DE LOS ELEMENTOS QUE HAN SIDO SALTADOS 

-- PRODUCTOS PAGINADOS SIN L PODEMOS APLICAR OTROS CRITERIOS SI QUEREMOS 
SELECT prod_id, prod_name, prod_category, prod_status, prod_total
    FROM sh.products WHERE prod_name NOT LIKE '%l%' ORDER BY  prod_name
    OFFSET 0 ROWS 
    FETCH NEXT 10 ROWS ONLY;  


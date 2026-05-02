-- Schema Academic (AD) 
-- Cocatenación de valores y mensajes 

SELECT 'id user: ' || student_id || ' name: ' || first_name 
|| ' email: ' || email_addr AS "info user" FROM ad.ad_student_details; 

SELECT 'id job: ' || job_id AS "id", 'salary between min to max: ' || min_salary 
|| '--' || max_salary AS "salary" FROM ad.ad_jobs;


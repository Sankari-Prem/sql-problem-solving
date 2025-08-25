SELECT first_name,LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;
SELECT UPPER('sky');
SELECT lower('sky');
SELECT ('      sky       ');
SELECT TRIM('      sky       ');
SELECT RTRIM('      sky       ');
SELECT 
first_name,
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,4,2)
FROM employee_demographics;
SELECT REPLACE(first_name,'x','a')
FROM employee_demographics;
SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;
SELECT 
LOCATE('o','Tom')

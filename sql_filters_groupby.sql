SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;
SELECT * 
FROM parks_and_recreation.employee_salary
WHERE occupation != 'Office Manager'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Female'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Female'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Female'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1985%'
;
SELECT gender 
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;
SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;
SELECT occupation,salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation,salary
;
SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender,age DESC
;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5,4
;
SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;
SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3
;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3,
;
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1
;
SELECT gender,AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

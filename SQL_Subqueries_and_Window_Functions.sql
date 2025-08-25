-- Subqueries
SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;
SELECT gender,AVG('MAX(age)')
FROM
(SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
GROUP BY gender;

-- Windows Functions
SELECT gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id
Group BY gender;

SELECT gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
SELECT dem.first_name,sal.last_name,gender,AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name,sal.last_name,gender;

SELECT dem.first_name,sal.last_name,gender,salary,SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id)
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
SELECT dem.first_name,sal.last_name,gender,salary,ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
SELECT dem.first_name,sal.last_name,gender,salary,ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
SELECT dem.first_name,sal.last_name,gender,salary,ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_num
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     



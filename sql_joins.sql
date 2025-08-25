SELECT * 
FROM employee_demographics
INNER JOIN employee_salary
    ON employee_demographics.employee_id = employee_salary.employee_id
;
SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sem
    ON dem.employee_id = sem.employee_id
;
SELECT dem.employee_id,age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sem
    ON dem.employee_id = sem.employee_id
    
#OUTER JOIN
;
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sem
    ON dem.employee_id = sem.employee_id
;
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sem
    ON dem.employee_id = sem.employee_id
;

#SELF JOIN
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
   ON emp1.employee_id = emp2.employee_id
;
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
   ON emp1.employee_id + 1 = emp2.employee_id
;
SELECT emp1.employee_id AS employee_santa,
emp1.first_name AS first_santa,
emp1.last_name AS last_santa,
emp2.employee_id AS employee_two,
emp2.first_name AS first_two,
emp2.last_name AS last_two
FROM employee_salary emp1
JOIN employee_salary emp2
   ON emp1.employee_id + 1 = emp2.employee_id
;
SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sem
    ON dem.employee_id = sem.employee_id
INNER JOIN parks_departments AS pd
    ON sem.dept_id = pd.department_id
;
SELECT *
FROM parks_departments
;

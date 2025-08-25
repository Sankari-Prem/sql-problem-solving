SELECT first_name,last_name,age,
CASE
    WHEN age <= 30 THEN 'Young' 
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN 'Fine'
END AS aged
FROM employee_demographics;
SELECT first_name,
last_name,
age,
CASE 
   WHEN age <= 30 THEN 'Young'
   WHEN age BETWEEN 31 and 50 THEN 'Old'
   WHEN age >= 50 THEN 'Fine'
END AS aged
FROM employee_demographics;
SELECT * 
FROM employee_salary;
SELECT first_name,
last_name,
CASE
   WHEN salary < 50000 THEN salary * 1.05
   WHEN salary > 50000 THEN salary * 1.07
END AS budget,
CASE
   WHEN DEPT_ID = 6 THEN SALARY * .10
END AS bonus
FROM employee_salary;


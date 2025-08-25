-- Temporary tables
CREATE TEMPORARY TABLE temp_tab
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(50)
);
SELECT *
FROM temp_tab;

INSERT INTO temp_tab
VALUES('Sankari','PS','vinnaithaandi varuvaaya')
;
SELECT *
FROM temp_tab;

CREATE TEMPORARY TABLE sal_50
SELECT *
FROM employee_salary
WHERE salary > 50000
;
SELECT *
FROM sal_50;
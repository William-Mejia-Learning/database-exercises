USE employees;

SELECT last_name FROM employees
WHERE last_name LIKE 'a%z%';

SELECT DISTINCT first_name, last_name
FROM employees
WHERE first_name LIKE 'a%z%';

SELECT * FROM employees
WHERE emp_no BETWEEN 10001 AND 10010 OR emp_no BETWEEN 10201 AND 10210;

SELECT *
FROM employees
WHERE first_name LIKE 'Georgi'
OR first_name LIKE 'Parto';

SELECT * FROM employees where first_name IN ('Georgi', 'Parto');

SELECT *
FROM employees
ORDER BY last_name;

SELECT *
FROM employees
ORDER BY last_name, first_name;

# SELECT * FROM employees LIMIT 10 OFFSET 20;

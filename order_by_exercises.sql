USE employees;

# Part one
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC, last_name DESC;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Part Two

SELECT *
FROM employees
WHERE (first_name = 'Irena' AND gender = 'M')
   OR (first_name = 'Vidya' AND gender = 'M')
   OR (first_name = 'Maya' AND gender = 'M');

SELECT *
FROM employees
WHERE last_name LIKE ('e%')
   OR last_name LIKE ('%e');

SELECT *
FROM employees
WHERE last_name LIKE ('e%')
  AND last_name LIKE ('%e');

SELECT *
FROM employees
WHERE last_name LIKE ('%q%')
  AND last_name NOT LIKE ('%qu%');

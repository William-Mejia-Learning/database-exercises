USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE ('%e%');

SELECT count(*)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT count(*)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC
LIMIT 1;

SELECT CONCAT('Days at company ', datediff(now(), hire_date)),
       concat(first_name, ' ', last_name)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999;
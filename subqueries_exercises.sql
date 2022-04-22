USE employees;

# 1
SELECT CONCAT(first_name, ' ', last_name) AS Employee, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

#2
SELECT title, first_name
FROM titles
JOIN employees e ON e.emp_no = titles.emp_no
WHERE titles.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# 3

SELECT first_name, last_name
FROM employees
JOIN dept_manager dm ON employees.emp_no = dm.emp_no
WHERE employees.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager
    WHERE dm.emp_no = employees.emp_no
    AND employees.gender = 'F'
    AND dm.to_date = '9999-01-01'
    );

#Bonus 1
SELECT dept_name
FROM departments
WHERE dept_no IN(
    SELECT dept_no
    FROM dept_manager
    WHERE year(to_date) = '9999' and emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );


#Bonus 2
SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM salaries
    WHERE year(to_date) = '9999' AND  salary IN(
        SELECT MAX(salary) FROM salaries
    )
    )



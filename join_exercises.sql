USE employees;

# 1
SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER
FROM employees as e
JOIN dept_manager as de
    ON de.emp_no = e.emp_no
JOIN departments as d
    ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;

#2
SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON de.dept_no = d.dept_no
WHERE e.gender = 'F' AND de.to_date = '9999-01-01'
ORDER BY d.dept_name;

# 3

SELECT title, COUNT(title) AS TOTAL
FROM titles t
    JOIN dept_emp em ON t.emp_no = em.emp_no
WHERE dept_no = 'd009' AND em.to_date LIKE '9%' AND t.to_date LIKE '9%'
GROUP BY title;

# 4
SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER, s.salary AS Salary
FROM departments d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
    JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9%' AND s.to_date LIKE '9%'
ORDER BY dept_name;


#Bonus
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e2 ON dm.emp_no = e2.emp_no
WHERE YEAR(de.to_date) LIKE '9%' AND YEAR(dm.to_date) LIKE '9%'
ORDER BY dept_name;



--Query 1
SELECT e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE hire_date BETWEEN '1986-01-01'  AND '1986-12-31'

--Query 2
SELECT e.last_name, e.first_name, d.dept_no, d.dept_name 
FROM employees e
INNER JOIN dept_manager dm
ON e.emp_no = dm.emp_no
INNER JOIN departments d
ON d.dept_no = dm.dept_no;

--Query 3
SELECT e.last_name, e.first_name, d.dept_no, d.dept_name 
FROM employees e
INNER JOIN dept_manager dm
ON e.emp_no = dm.emp_no
INNER JOIN departments d
ON d.dept_no = dm.dept_no;

--Query 4
SELECT e.last_name, e.first_name, d.dept_no, d.dept_name 
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no;

--Query 5
SELECT e.first_name, e.last_name, e.sex 
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--Query 6
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e
INNER JOIN dept_emp dm
ON e.emp_no = dm.emp_no
INNER JOIN departments d
ON dm.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.last_name ASC, e.first_name ASC

--Query 7
SELECT last_name, COUNT(DISTINCT last_name)
FROM employees
GROUP BY last_name;

--Query 8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name;


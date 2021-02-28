--1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary  FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no;
--2
SELECT first_name, last_name, hire_date FROM employees
WHERE CAST(hire_date AS VARCHAR) LIKE '1986%'
--3
SELECT d.dept_name, e.first_name, e.last_name, e.emp_no, dm.dept_no FROM employees AS e
INNER JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
--4
SELECT d.dept_name, e.first_name, e.last_name, e.emp_no FROM employees AS e
INNER JOIN dept_emp AS de
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
--5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
--6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name ='Sales'
--7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name ='Sales' OR d.dept_name = 'Development'
--8
SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC

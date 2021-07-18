SELECT t.title, COUNT(e.emp_no)
FROM employees e 
INNER JOIN titles t 
ON e.emp_no = t.emp_no 
WHERE e.hire_date > '1965-01-01'
GROUP BY t.title;

SELECT t.title, avg(s.salary)
FROM titles t 
INNER JOIN salaries s 
ON t.emp_no = s.emp_no
GROUP BY t.title;

SELECT d.dept_name, SUM(s.salary) AS 'SUM'
FROM departments d
INNER JOIN dept_emp de 
ON d.dept_no = de.dept_no
INNER JOIN salaries s
ON de.emp_no = s.emp_no
WHERE YEAR(de.from_date) = '1990' AND YEAR(de.to_date) = '1992'
GROUP BY d.dept_name
HAVING d.dept_name = 'Marketing';
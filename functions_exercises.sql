USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;




SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# exercise refactor
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# 3 Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '____-12-25';

# 4 Find all employees hired in the 90s and born on Christmas — 362 rows.
# 5 Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE (YEAR(hire_date) BETWEEN '1990' AND '1999')
AND birth_date LIKE '____-12-25' ORDER BY hire_date DESC;

# 6 For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
SELECT DATEDIFF(curdate(), hire_date) FROM employees WHERE (YEAR(hire_date) BETWEEN '1990' AND '1999')
AND birth_date LIKE '____-12-25' ORDER BY hire_date DESC;







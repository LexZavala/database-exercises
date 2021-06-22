USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name Like 'E%e'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name Like 'E%e'
ORDER BY last_name;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(last_name), last_name FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;





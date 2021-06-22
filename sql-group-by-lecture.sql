USE employees;

SELECT COUNT(*), gender FROM employees GROUP BY gender;

SELECT COUNT(*), last_name FROM employees GROUP BY last_name ORDER BY count(*);

# SELECT *, gender FROM employees GROUP BY gender;
# this wont work due to lack of COUNT function to aggregate the data

# Lets find the average age of hire for employees in the company
SELECT AVG(DATEDIFF(hire_date, birth_date)/365) FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)/365) FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date)/365) FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS Name, DATEDIFF(hire_date, birth_date)/365 AS 'Age when hired'
FROM employees
ORDER BY DATEDIFF(hire_date, birth_date)/365 DESC
LIMIT 50;

# GROUP BY combines duplicates into one single value for each group
# GROUP BY consolidates rows based on a common column

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name Like 'E%e'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(last_name), last_name  FROM employees
WHERE last_name Like 'E%e'
GROUP BY last_name
ORDER BY last_name;



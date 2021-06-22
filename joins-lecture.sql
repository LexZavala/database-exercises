USE employees;

SELECT employees.last_name, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no
LIMIT 50;


# SELECT AVG(salary), gender FROM employees
# JOIN salaries ON employees.emp_no = salaries.emp_no
# GROUP BY gender;


# CREATE DATABASE join_test_db; alredy did this

USE join_test_db;

#LEFT JOIN

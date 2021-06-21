USE employees;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%';

SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date;

# multiple order bys

SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name;


#order by seniority
SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, hire_date;


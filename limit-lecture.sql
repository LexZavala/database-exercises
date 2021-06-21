USE employees;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20 OFFSET 20;
# Offset allows for you to run a query at a different row index

#underscore wild card represents one space, % wild card represents any number of spaces
# '__Sed%'

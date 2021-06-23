# THIS IS FOR THE JOIN EXAMPLE DATABASE PORTION
USE join_test_db;

INSERT INTO users (name, email, role_id) VALUES
('Jake', 'jake@example.com', 2),
('Clark', 'clark@example.com', 2),
('Neim', 'neim@example.com', 2),
('Sandra', 'sandra@example.com', null);

SELECT u.name, r.name FROM users u JOIN roles r on u.role_id = r.id;

SELECT u.name, r.name FROM roles r LEFT JOIN users u on r.id = u.role_id;

SELECT u.name, r.name FROM roles r RIGHT JOIN users u on r.id = u.role_id;

# EMPLOYEES DATABASE EXAMPLE
USE employees;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'

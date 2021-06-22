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

SELECT users.name AS user_name, roles.name AS role_name
FROM users JOIN roles
ON users.role_id = roles.id;
# with the above, user names with a null role_id do not show up in the output

SELECT users.name AS user_name, roles.name AS role_name
FROM users LEFT JOIN roles
ON users.role_id = roles.id;

USE codeup_test_db;
# CREATE TABLE persons (
#      person_id INT NOT NULL AUTO_INCREMENT,
#      first_name VARCHAR(25) NOT NULL,
#      album_id INT NOT NULL,
#      PRIMARY KEY (person_id)
# ); already did this

# INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);
# already did this

SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;

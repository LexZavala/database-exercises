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

# INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 2), ('Santiago', 8), ('Tareq', 10), ('Anaya', 16);
# already did this

# regular JOIN aka INNER JOIN
SELECT p.first_name, a.record_name FROM persons p JOIN albums a ON p.album_id = a.id;
# left JOIN also called OUTER JOINS
SELECT p.first_name, a.record_name FROM albums a LEFT JOIN persons p ON a.id = p.album_id;
# right JOIN also called OUTER JOINS
SELECT p.first_name, a.record_name FROM persons p RIGHT JOIN albums a ON a.id = p.album_id;

# junction tables // associative tables  // join tables

# CREATE TABLE preferences (
#                              person_id INT NOT NULL,
#                              album_id INT NOT NULL
# ); already did this

INSERT INTO preferences (person_id, album_id) VALUES (1, 13), (1, 4), (1, 10), (1, 16), (2, 1), (2, 11), (2, 3), (3, 11), (3, 16), (3, 8);


SELECT p.first_name AS name, a.record_name AS album FROM persons p JOIN preferences pf ON p.person_id = pf.person_id JOIN albums a ON pf.album_id = a.id;
USE employees;

# use of indexes is part of Query optomization

SHOW INDEXES from employees;

SHOW INDEXES FROM departments;

# Let's say I want some salary information

SELECT salary FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary); #alters the tables to add an index and allows for query's to run faste

USE codeup_test_db;

CREATE TABLE quotes2 (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author  VARCHAR(70) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE quotes2 ADD unique (content);
INSERT INTO quotes2 (content, author)
VALUES ('This is test content in order to learn this lesson', 'Lex Zavala');

USE employees;
DROP index salary_index ON salaries;
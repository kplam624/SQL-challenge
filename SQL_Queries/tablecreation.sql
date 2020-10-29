-- Need to restart the project
DROP TABLE IF EXISTS employees;

-- Creating tables, starting with employees.

CREATE TABLE employees(
emp_no int,
emp_title_id varchar(30),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date
);

-- Checking to see if the import and table are correct

SELECT * FROM employees
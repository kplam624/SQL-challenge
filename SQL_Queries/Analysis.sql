-- Queries.

-- Employee details

CREATE VIEW "Employee Overview" AS
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- Employees hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

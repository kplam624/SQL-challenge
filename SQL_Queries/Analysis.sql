-- Queries.

-- Employee details
CREATE VIEW "Employee Overview" AS
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;
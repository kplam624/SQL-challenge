-- Queries.

-- Employee details

CREATE VIEW "Employee Overview" AS
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;
----

-- Employees hired in 1986

CREATE VIEW "Employees by hire date" AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
----

--Employee managers by departments

CREATE VIEW "Department Managers" AS
SELECT dm.emp_no, e.last_name, e.first_name, d.dept_name
FROM department AS d
INNER JOIN department_manager AS dm ON dm.dept_no = d.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;
----

-- Finding Hercules
CREATE VIEW "Finding Hercules" AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


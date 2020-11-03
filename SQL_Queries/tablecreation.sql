-- Need to restart the project
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS Department_Employees CASCADE;
DROP TABLE IF EXISTS Department CASCADE;
DROP TABLE IF EXISTS Department_Manager CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;

-- Creating a table for titles

CREATE TABLE Titles(
title_id varchar(10) NOT NULL PRIMARY KEY,
title varchar(30)
);

-- Checking to see if the import and table are correct

SELECT * FROM Titles;

-- Creating a table for Department

CREATE TABLE Department(
dept_no varchar(10) NOT NULL PRIMARY KEY,
dept_name varchar(30)
);

-- Checking to see if the import and table are correct

SELECT * FROM Department;

-- Creating table for employees.

CREATE TABLE employees(
emp_no int NOT NULL PRIMARY KEY,
emp_title_id varchar(30),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date,
FOREIGN KEY (emp_title_id)
REFERENCES Titles (title_id)
);

-- Checking to see if the import and table are correct

SELECT * FROM employees;

-- Creating a table for Department Employees

CREATE TABLE Department_Employees(
emp_no int NOT NULL,
dept_no varchar(10),
FOREIGN KEY (emp_no)
REFERENCES Employees (emp_no),
FOREIGN KEY(dept_no)
REFERENCES Department (dept_no),
PRIMARY KEY(emp_no, dept_no)
);

-- Checking to see if the import and table are correct

SELECT * FROM Department_Employees;

-- Creating a table for Department Manager

CREATE TABLE Department_Manager(
dept_no varchar(10) NOT NULL,
emp_no int NOT NULL,
FOREIGN KEY(dept_no)
REFERENCES Department (dept_no),
FOREIGN KEY(emp_no)
REFERENCES employees(emp_no),
PRIMARY KEY(dept_no,emp_no)
);

-- Checking to see if the import and table are correct

SELECT * FROM Department_Manager;

-- Creating a table for Salaries

CREATE TABLE Salaries(
emp_no int NOT NULL, 
salary int NOT NULL,
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no)
);

-- Checking to see if the import and table are correct

SELECT * FROM Salaries;
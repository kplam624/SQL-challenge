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

SELECT * FROM employees;

-- Creating a table for Department Employees

CREATE TABLE Department_Employees(
emp_no int,
dept_no varchar(10)
);

-- Checking to see if the import and table are correct

SELECT * FROM Department_Employees;

-- Creating a table for Department

CREATE TABLE Department(
dept_no varchar(10),
dept_name varchar(30)
);

-- Checking to see if the import and table are correct

SELECT * FROM Department;

-- Creating a table for Department Manager

CREATE TABLE Department_Manager(
dept_no varchar(10),
emp_no int
);

-- Checking to see if the import and table are correct

SELECT * FROM Department_Manager;

-- Creating a table for titles

CREATE TABLE Titles(
title_id varchar(10),
title varchar(30)
);

-- Checking to see if the import and table are correct

SELECT * FROM Titles;

-- Creating a table for Salaries

CREATE TABLE Salaries(
emp_no int, 
salary int
);

-- Checking to see if the import and table are correct

SELECT * FROM Salaries;
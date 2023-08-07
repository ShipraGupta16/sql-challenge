-- Create a table for titles
CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

-- Create a table for employees
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR,	
	birth_date DATE,
	first_name VARCHAR DEFAULT TRUE NOT NULL,
	last_name VARCHAR NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create a table for departments
CREATE TABLE departments(
	dept_no	VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

-- Create a table for dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create a table for dept_emp
CREATE TABLE dept_emp(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create a table for salaries
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- View the records from each tables 
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;

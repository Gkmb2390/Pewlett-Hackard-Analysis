-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);
-- Creating Employees Table
Create Table Employees(
    emp_no INT Not Null,
	birth_date DATE Not Null,
	first_name VARCHAR Not Null,
	last_name VARCHAR Not Null,
	gender VARCHAR Not Null,
	hire_date DATE Not Null,
	Primary Key (emp_no)
);

Create Table Managers(
	dept_no VARCHAR Not Null, 
	emp_no INT Not Null, 
	from_date DATE Not Null,
	to_date DATE Not Null,
	Foreign Key (emp_no) REFERENCES employees (emp_no),
	Foreign Key (dept_no) REFERENCES departments (dept_no),
	Primary Key(emp_no, dept_no)
);



Create Table Salaries( 
	emp_no INT Not Null, 
	salary INT Not Null,
	from_date DATE Not Null,
	to_date DATE Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	Primary Key (emp_no)
); 


Create Table Dept_Emp(
	dept_no VARCHAR Not Null, 
	emp_no INT Not Null, 
	from_date DATE Not Null,
	to_date DATE Not Null,
	Foreign Key (emp_no) REFERENCES employees (emp_no),
	Foreign Key (dept_no) REFERENCES departments (dept_no),
	Primary Key (emp_no, dept_no)
);
Create Table Titles(
	emp_no INT Not Null, 
	title VARCHAR Not Null, 
	from_date DATE Not Null, 
	to_date DATE Not Null, 
	Foreign Key (emp_no) REFERENCES employees (emp_no),
	Primary Key (emp_no, title)
);

-- Confirming tables exist and are set correctly
SELECT * FROM Managers;
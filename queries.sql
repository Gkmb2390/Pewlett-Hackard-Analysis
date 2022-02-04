-- SELECT * FROM dept_emp;


-- Selecting with count options
-- SELECT COUNT(First_name) 
-- FROM employees
-- where (birth_date Between '1952-01-01' and '1955-12-31') 
-- and (hire_date Between '1985-01-01' and '1988-12-31');

-- Filtering data and generating a new table
SELECT First_name, last_name 
INTO retirement_info
FROM employees
where (birth_date Between '1952-01-01' and '1955-12-31') 
and (hire_date Between '1985-01-01' and '1988-12-31');


-- SELECT first_name,last_name
-- FROM employees
-- where birth_date Between '1952-01-01' and '1952-12-31'
-- -- RESULTS - 21K

-- SELECT first_name,last_name
-- FROM employees
-- where birth_date Between '1953-01-01' and '1953-12-31'
-- -- RESULTS - 22.8K

-- SELECT first_name,last_name
-- FROM employees
-- where birth_date Between '1954-01-01' and '1954-12-31'
-- -- RESULTS - 23.2K

-- SELECT first_name,last_name
-- FROM employees
-- where birth_date Between '1955-01-01' and '1955-12-31'
-- -- RESULTS - 23.1K


-- Joining departments and dept_manager tables -- INNER JOIN
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

-- Joining retirement_info and dept_emp tables -- Inner Join ABREVIATED
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN managers as dm
ON d.dept_no = dm.dept_no;

-- Joining retirement_info and dept_emp tables -- LEFT JOIN
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;

-- Joining retirement_info and dept_emp tables -- Left Join ABREVIATED
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no;

Select ri.emp_no,
	ri.first_name,
	ri.last_name,
de.to_date
Into current_emp
From retirement_info as ri
LEft Join dept_emp as de
On ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

--EMPLOYEE count by department number - GROUP BY DEPT
SELECT COUNT(ce.emp_no), de.dept_no
From current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no;

-- GROUP BY and ORDER BY
SELECT COUNT(ce.emp_no), de.dept_no
From current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
order BY de.dept_no;

SELECT * FROM current_emp

SELECT * FROM salaries;

SELECT * FROM salaries
ORDER BY to_date DESC;

-- MORE THAN 1 JOIN with Filters
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary, de.to_date
INTO emp_info
FROM employees as e
INNER Join salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	AND (de.to_date = '9999-01-01');
	
	
	
--  List of manager per dept
SELECT dm.dept_no, dm.emp_no,dm.from_date,dm.to_date,
	d.dept_name,
	ce.first_name, ce.last_name
INTO manager_info
FROM managers as dm
	INNER JOIN departments as d
	ON (dm.dept_no = d.dept_no)
	INNER JOIN current_emp as ce
	ON (dm.emp_no = ce.emp_no);
	
	
	
SELECT ce.first_name, ce.emp_no, ce.last_name, d.dept_name
 -- dept_info
FROM current_emp as ce
INNER JOIN dept_emp as de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no);


Select e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
Inner JOIN departments as d
ON (de.dept_no = d.dept_no)


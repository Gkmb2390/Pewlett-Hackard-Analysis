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
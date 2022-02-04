-- DELIVEARBLE 1

-- RETIREMENT TITLES BUILD 
SELECT e.emp_no, e.first_name, e.last_name, jd.title, jd.from_date, jd.to_date
INTO ret_titles
FROM employees as e
INNER JOIN titles as jd
ON (e.emp_no = jd.emp_no)
Where (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM ret_titles as rt
WHERE (to_date = '9999-01-01')
ORDER BY rt.emp_no,rt.title DESC;


-- Find the number of retiring titles in each job title
SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;

-- DELIVEARBLE 2

--Mentorship Query
SELECT DISTINCT ON(emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, jd.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN titles as jd
ON (e.emp_no = jd.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
Where (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date='9999-01-01')
ORDER BY e.emp_no ASC;
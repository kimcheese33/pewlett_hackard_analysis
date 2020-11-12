
-----Deliverable 1

--create retirement_titles table
SELECT
e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees e LEFT JOIN titles ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

select * from emp_titles;

-- create unique retirement titles table
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_retirement_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

--create retiring titles table
SELECT
COUNT(title) AS count,
title
INTO retiring_titles
FROM unique_retirement_titles
GROUP BY title
ORDER BY COUNT(title) DESC;


----- Deliverable 2

-- create mentorship eligibility table
SELECT
DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
d.from_date,
d.to_date,
t.title
INTO mentorship_elig
FROM
employees e LEFT JOIN dept_emp d
ON e.emp_no = d.emp_no
LEFT JOIN titles t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND d.to_date = '9999-01-01'
ORDER BY e.emp_no ASC;


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

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_retirement_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

SELECT
COUNT(title) AS count,
title
INTO retiring_titles
FROM unique_retirement_titles
GROUP BY title
ORDER BY COUNT(title) DESC;
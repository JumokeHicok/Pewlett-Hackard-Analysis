--Create retirement titles table
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t on e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

select * from retirement_titles;

drop table retirement_titles cascade;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

select * from unique_titles;

--retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

select * from retiring_titles;

--create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title 
INTO mentorship_eligibility
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN titles AS t ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

select * from mentorship_eligibility;

--Create retirement departments table
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, t.title, t.from_date, t.to_date
INTO retirement_depts
FROM employees as e
JOIN titles as t on e.emp_no = t.emp_no
JOIN dept_emp as de on e.emp_no = de.emp_no
JOIN departments as d on de.dept_no = d.dept_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	dept_name
INTO unique_dept
FROM retirement_depts
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(emp_no), dept_name
INTO retiring_dept
FROM unique_dept
GROUP BY dept_name
ORDER BY COUNT(emp_no) DESC;

select * from retiring_dept;

--Create mentorship titles table
select count(emp_no), title
From mentorship_eligibility
group by title
order by count(emp_no) desc;

--Create mentorship departments table
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, d.dept_name 
INTO mentorship_eligibility_dept
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

select count(emp_no), dept_name
From mentorship_eligibility_dept
group by dept_name
order by count(emp_no) desc;












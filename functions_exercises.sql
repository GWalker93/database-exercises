use employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') order by last_name ASC, first_name ASC;

SELECT * FROM employees WHERE last_name like 'E%' order by emp_no DESC;

SELECT * FROM employees WHERE last_name like '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name ='Maya';

SELECT * FROM employees WHERE gender like 'M' and first_name IN ('Irena', 'Vidya', 'Maya');

SELECT concat (first_name," ", last_name) FROM employees where last_name like '%E' and last_name like 'E%' limit 6;

SELECT * FROM employees where last_name like '%q%' and last_name not like '%qu%';

SELECT concat (first_name," ", last_name," ",birth_date) FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT concat (first_name," ", last_name," ",birth_date) FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
and year(hire_date) between 1990 and 1999;

SELECT concat (first_name," ", last_name," ",birth_date) FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  and year(hire_date) between 1990 and 1999
order by birth_date asc, hire_date desc
limit 6;

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT concat (first_name," ", last_name," ",birth_date) as names, datediff (curdate(), hire_date) as 'how many days they have been here'
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
and year(hire_date) between 1990 and 1999
order by datediff (curdate(), hire_date) asc
limit 20
;

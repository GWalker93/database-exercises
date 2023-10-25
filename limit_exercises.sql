use employees;

SELECT DISTINCT last_name
FROM employees
order by last_name DESC
LIMIT 10;


SELECT emp_no
from salaries
order by salary DESC
limit 5;

SELECT emp_no
from salaries
order by salary DESC
limit 5 offset 45;
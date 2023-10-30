use employees;

SELECT column_a, column_b, column_c
FROM table_a
WHERE column_a IN (
    SELECT column_a
    FROM table_b
    WHERE column_b = true
);

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

SELECT first_name, last_name, emp_no
from employees
where hire_date in (
      select hire_date
    from employees
      where emp_no = 101010
);


use employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
where last_name like '%E'
and last_name like 'E%'
group by last_name
limit 5;

SELECT distinct  concat(first_name, " ",last_name) as names
FROM employees
where last_name like '%E'
  and last_name like 'E%'
group by first_name, last_name;

SELECT distinct count(last_name) as number,last_name as names
FROM employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

SELECT count(first_name) as number, gender as gender
FROM  employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
group by gender;
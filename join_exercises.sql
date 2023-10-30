use employees;

select d.dept_name as Department_Name, concat(e.first_name, ' ', e.last_name ) as Department_Manager
from employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
order by d.dept_name asc;

select d.dept_name as Department_Name, concat(e.first_name, ' ', e.last_name ) as Department_Manager
from employees as e
         join dept_manager as dm
              on dm.emp_no = e.emp_no
         join departments as d
              on d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
and e.gender = 'f';

select t.title as Title, count(t.title) as Total
from titles as t
    join dept_emp as de
      on de.emp_no = t.emp_no
    join departments as d
      on  d.dept_no=de.dept_no
WHERE de.to_date = '9999-01-01'
  and t.to_date = '9999-01-01'
and de.dept_no = 'd009'
group by t.title;

select d.dept_name as Department_Name, concat(e.first_name, ' ', e.last_name ) as Department_Manager, s.salary as Salary
from employees as e
         join dept_manager as dm
              on dm.emp_no = e.emp_no
         join departments as d
              on d.dept_no = dm.dept_no
        join dept_emp as de
            on dm.emp_no = de.emp_no
        join salaries as s
            on de.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01'
order by d.dept_name asc;

-- hello
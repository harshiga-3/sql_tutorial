-- top 3 highest paid employees
select id, name, salary
from employees
order by salary desc
limit 3;

-- departments having more than one employee
select dept, count(id)
from employees
group by dept
having count(id) > 1;

-- employees working in it department (using join)
select e.id, e.name
from employees e
join department d
on e.dept = d.dept_name
where d.dept_name = 'it';

-- employees with salary between 40000 and 50000
select id, name
from employees
where salary between 40000 and 50000;

-- department with lowest average salary
select dept, avg(salary) as avg_salary
from employees
group by dept
order by avg_salary asc
limit 1;

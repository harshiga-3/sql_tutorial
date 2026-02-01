-- 1. select all employees with salary > 50000
select * 
from employee 
where salary > 50000;

-- 2. select employee name and department name using join
select e.emp_name, d.dept_name
from employee as e
join department as d
on e.dept_id = d.dept_id;

-- 3. find total salary of each department
select d.dept_name, sum(e.salary) as total_salary
from employee as e
join department as d
on e.dept_id = d.dept_id
group by d.dept_name;

-- 4. find departments with average salary > 60000
select d.dept_name, avg(e.salary) as avg_salary
from employee as e
join department as d
on e.dept_id = d.dept_id
group by d.dept_name
having avg(e.salary) > 60000;

-- 5. list employees earning more than their department average
select e.emp_name, e.salary
from employee as e
where e.salary >
(
    select avg(e2.salary)
    from employee as e2
    where e2.dept_id = e.dept_id
);

-- 6. find department with highest total salary
select d.dept_name, sum(e.salary) as total_salary
from employee as e
join department as d
on e.dept_id = d.dept_id
group by d.dept_name
order by total_salary desc
limit 1;

-- 7. list employees who do not belong to any department
select *
from employee
where dept_id is null;

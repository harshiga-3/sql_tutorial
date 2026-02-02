--  select all employees
select * from employee;

-- 2 employees earning less than average salary
select id, name
from employee
where salary < (select avg(salary) from employee);

-- 3 department wise maximum salary
select d.dept_name, max(e.salary) as max_salary
from employee as e
join department as d on e.dept_id = d.dept_id
group by d.dept_name;

-- 4 count employees in each department
select d.dept_name, count(e.id) as count_dept
from employee as e
join department as d on e.dept_id = d.dept_id
group by d.dept_name;

-- 5 employee name, salary, department name
select e.name, e.salary, d.dept_name
from employee as e
join department as d on e.dept_id = d.dept_id;

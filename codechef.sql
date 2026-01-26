/* it is a solution for first section  sql in code chef  */
select * from Products;

select product_name,category from Products where price>100.00;


select avg(salary)as avg_salary from Works;

select department_name,location from departments where location like 's%'; 

select distinct company_name from works;

select count(*)fiction_count from Books where genre='Fiction';

select Movie_name from Cinema where Rating>7 and Rating<9;

select book_id, title, author , published_year  from Library 
where rating isnull;

select  employee_name, company,  salary   from Employees 
where category='Full-Time'  order by salary desc;

select department,count(*) as total_employees from Employees group by department;

select  author_id, author_name,  publication_name  from Views where view_count=0 order by author_id asc;

select  distinct player_name,score from Players order by score desc limit 3;
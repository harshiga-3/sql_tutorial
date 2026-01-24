
/*Assume a table:

**Employee**

```
emp_id (INT)
name (VARCHAR)
dept (VARCHAR)
salary (INT)
age (INT)
city (VARCHAR)
```



1. Display all records from the Employee table.

2. Show only the `name` and `salary` of all employees.

3. Find employees who work in the **'IT'** department.

4. List employees whose salary is greater than **50,000**.

5. Display employees who live in **'Chennai'**.

6. Find employees whose age is between **25 and 35**.

7. Show employees whose name starts with the letter **'A'**.

8. Display all employees sorted by **salary in ascending order**.

9. Display all employees sorted by **age in descending order**.

10. Count the total number of employees.

11. Find the **maximum salary** in the Employee table.

12. Find the **average salary** of all employees.

13. Display distinct department names.

14. Find employees who are **not** in the 'HR' department.

15. Show the top **3 highest-paid employees**. */

select * from Employee;

select name, salary from Employee;

select * from Employee where dept = 'IT';

select * from Employee where age between 25 and 35;

select * from Employee where name like 'A%';

select * from Employee order by salary asc;

select * from Employee order by age desc;

select distinct dept from Employee;

select count(*) from Employee;

select max(salary) from Employee;

select min(salary) from Employee;

select avg(salary) from Employee;

select * from Employee where dept <> 'HR';

select * from Employee order by salary desc limit 3;




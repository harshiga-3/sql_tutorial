-- SQL GROUP BY & HAVING Queries

-- Find total salary of each department
SELECT dept, SUM(salary)
FROM Employee
GROUP BY dept;

-- Find number of employees in each department
SELECT dept, COUNT(*)
FROM Employee
GROUP BY dept;

-- Find average salary of employees in each department
SELECT dept, AVG(salary)
FROM Employee
GROUP BY dept;

-- Find departments having more than 5 employees
SELECT dept, COUNT(dept) AS t_count
FROM Employee
GROUP BY dept
HAVING COUNT(dept) > 5;

1.Display all distinct salaries from the Employee table
SELECT DISTINCT salary
FROM Employee;

2. Display department-wise total salary
SELECT dept, SUM(salary) AS total_salary
FROM Employee
GROUP BY dept;

3. Display the maximum salary in each department
SELECT dept, MAX(salary) AS max_salary
FROM Employee
GROUP BY dept;

4. Display all employees sorted by salary in descending order
SELECT *
FROM Employee
ORDER BY salary DESC;
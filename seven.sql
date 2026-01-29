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

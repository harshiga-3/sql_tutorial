create database demo;

use demo;


CREATE TABLE Emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    branch_id INT
);
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Emp VALUES
(1, 'Amit', 50000, 101),
(2, 'Neha', 60000, 102),
(3, 'Rahul', 45000, 101),
(4, 'Priya', 70000, 103),
(5, 'Karan', 40000, NULL);

INSERT INTO Branch VALUES
(101, 'IT', 'Bangalore'),
(102, 'HR', 'Chennai'),
(103, 'Finance', 'Mumbai'),
(104, 'Sales', 'Delhi');

select e.emp_id,e.emp_name,e.salary,b.branch_name from Emp as e join Branch as b  on e.branch_id=b.branch_id;

select e.emp_id,e.emp_name,e.salary,b.branch_name from Emp as e left join Branch as b  on e.branch_id=b.branch_id;

select e.emp_id,e.emp_name,e.salary,b.branch_name from Emp as e right join Branch as b  on e.branch_id=b.branch_id;

select e.emp_id,e.emp_name,e.salary,b.branch_name from Emp as e  ,Branch as b where e.branch_id=b.branch_id;

select e.emp_id,e.emp_name,e.salary,b.branch_name from Emp as e cross join Branch as b  on e.branch_id=b.branch_id;


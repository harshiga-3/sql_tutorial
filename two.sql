create database software;
use  software;

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    company VARCHAR(50)
);

INSERT INTO Employee VALUES
(1, 'Arun', 'IT', 35000, 'TCS'),
(2, 'Priya', 'ECE', 42000, 'Infosys'),
(3, 'Karthik', 'EEE', 38000, 'Wipro'),
(4, 'Divya', 'IT', 45000, 'HCL'),
(5, 'Ravi', 'CSE', 50000, 'Accenture'),
(6, 'Sneha', 'ECE', 40000, 'Tech Mahindra'),
(7, 'Vijay', 'EEE', 36000, 'TCS'),
(8, 'Anitha', 'IT', 47000, 'Infosys'),
(9, 'Suresh', 'CSE', 52000, 'Wipro'),
(10, 'Meena', 'IT', 48000, 'HCL'),
(11, 'Rahul', 'ECE', 39000, 'Accenture'),
(12, 'Pooja', 'EEE', 37000, 'Tech Mahindra'),
(13, 'Ajay', 'CSE', 54000, 'TCS'),
(14, 'Kavya', 'IT', 46000, 'Infosys'),
(15, 'Manoj', 'ECE', 41000, 'Wipro'),
(16, 'Nisha', 'EEE', 36500, 'HCL'),
(17, 'Deepak', 'CSE', 55000, 'Accenture'),
(18, 'Lavanya', 'IT', 49000, 'Tech Mahindra'),
(19, 'Prakash', 'ECE', 43000, 'TCS'),
(20, 'Swathi', 'EEE', 37500, 'Infosys');


select * from  Employee;

select  count(*) total from Employee;
select  count(*) dept from Employee where dept='IT';

select avg(salary) from Employee;
select min(salary) from Employee;
select max(salary) from Employee;

select sqrt(34);
select sqrt(-45); /* it return null for give neagative value*/

select abs(-78);
select abs(-67.90);

select ceil(90);
select ceil(-90.1);
select ceil(45.90);
select ceil(45.1);

select floor(56.1);
select floor(56.5);
select floor(56.6);

select floor(-78);
select floor(-87.1);

select ceiling(67.89);
select ceiling(-98.03);

select truncate(34.6789,1);
select truncate(34.578,2);
select truncate(67.934,-1);
select truncate(45.689,-3);

select round(35.993,2);
select round(35.999,3);
select ucase(name) from Employee;
select  name,concat('Rs.',format(salary,0)) salary from Employee;
select name ,char_length(name) from Employee;
select  left(name,3) from Employee;

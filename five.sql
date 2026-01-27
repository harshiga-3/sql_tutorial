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

select max(salary) from Employee;

select dept,count(*) as dept_member from Employee group by dept;
select dept,count(*) as dept_name from Employee group by dept having count(*)>1;
SELECT MAX(salary)
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

select dept,count(*) from Employee where salary >50000 group  by dept;
select dept,count(*) as total from Employee    group by dept order by total desc;


create database demo;
use demo;

create table stud (
id  int auto_increment primary key,
name varchar(20) not null,
age int check (age>18),
dept varchar(20) default 'it',
phone int unique

);
show tables;
select * from stud;

insert into stud values('devi',19,'cse',123456789);

INSERT INTO stud (name, age, dept, phone)
VALUES ('devi', 19, 'cse', 123456789);
INSERT INTO stud (name, age,  phone)
VALUES ('devika', 19,  1234567679);
select * from stud;

alter table stud  modify name varchar(20); /* alter table stud modify name varchar(20) not null*/

INSERT INTO stud ( age, dept, phone)
VALUES ( 19, 'csee', 123455321);
select * from stud;

alter table stud  alter dept drop default; /* alter table stud modify dept set default 'it';*

/* alter table stud add check(salary>10000)
alter table stud  add constraint ch_name check (salary>10000)
alter table stud drop ch_name;*/ 

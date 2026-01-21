create database company;

use company;

drop database company;

drop schema company;

drop database if exist company;





CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept VARCHAR(30),
    salary DECIMAL(10,2)
);

describe Employee;

drop table Employee;


INSERT INTO Employee (id, name, dept, salary) VALUES
(1, 'Harshiga', 'IT', 45000),
(2, 'Charuleela', 'CSE', 42000),
(3, 'Anand', 'ECE', 40000),
(4, 'Priya', 'IT', 48000),
(5, 'Karthik', 'MECH', 38000),
(6, 'Divya', 'EEE', 41000),
(7, 'Suresh', 'CIVIL', 39000),
(8, 'Meena', 'IT', 50000),
(9, 'Arjun', 'CSE', 46000),
(10, 'Nithya', 'ECE', 43000);


INSERT INTO Employee (id,name) values(11,'givitha'),(2,'vani');

select * from Employee where salary>45000;
select * from Employee where salary<40000;
select * from Employee where salary<=30000;
select * from Employee where salary>=50000;

select * from Employee where salary<>40000;

select * from Employee where salary between 40000 and  50000;

select * from Employee where  dept in("it","cse");

select * from Employee where dept not in( "mech");

select * from Employee where dept="it" or dept="cse";

select * from Employee where   not (dept= "it");

select * from Employee limit 5;

select * from Employee where name  Like 'A%';

select * from Employee where name Like '__b%';

select * from Employee where name Like 'A\%%';



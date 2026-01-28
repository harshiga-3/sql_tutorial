create database demo;
use demo;

create table branch(
branch_id int primary key auto_increment,
b_name varchar(20));

create table emp(
id int primary key auto_increment,
name varchar(20),
pos varchar(20),
salary int,
branch_id int,
constraint   fk_key  foreign key  (branch_id) references  branch(branch_id)
);
drop table branch;

alter table emp drop constraint fk_key;

show index from emp;

alter table   emp drop index c_name;
alter table emp add index (name);
create index c_name on emp(name);


create database demo;

use demo;

create table branch(
branch_id int  auto_increment primary key,
branch varchar(20)
);

create table emp(
id int auto_increment primary key,
name varchar(20),
pos varchar(9),
salary int,
branch_id int,
constraint fk_key foreign key (branch_id) references branch(branch_id)
on delete cascade);

INSERT INTO branch (branch) VALUES
('Chennai'),
('Bangalore'),
('Mumbai');

INSERT INTO emp (name, pos, salary, branch_id) VALUES
('Arun', 'Manager', 50000, 1),
('Divya', 'Developer', 40000, 1),
('Karthik', 'Tester', 35000, 2),
('Meena', 'HR', 30000, 3);

delete     from branch   where branch_id=2;
select * from branch;
select * from emp;


create database demo;
drop table emp;
drop table branch;
use demo;

create table branch(
branch_id int  auto_increment primary key,
branch varchar(20)
);

create table emp(
id int auto_increment primary key,
name varchar(20),
pos varchar(9),
salary int,
branch_id int,
constraint fk_key foreign key (branch_id) references branch(branch_id)
on delete set null);

INSERT INTO branch (branch) VALUES
('Chennai'),
('Bangalore'),
('Mumbai');

INSERT INTO emp (name, pos, salary, branch_id) VALUES
('Arun', 'Manager', 50000, 1),
('Divya', 'Developer', 40000, 1),
('Karthik', 'Tester', 35000, 2),
('Meena', 'HR', 30000, 3);

delete     from branch   where branch_id=2;
select * from branch;
select * from emp;



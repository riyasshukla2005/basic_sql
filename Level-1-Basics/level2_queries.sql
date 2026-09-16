create database employees;
use employees;
create table employee (
id int primary key,
name varchar(50),
dpt varchar(50),
salary int,
city varchar(50)
);
insert into employee (id,name,dpt,salary,city)
values
( 1, 'Asha', 'IT', 60000, 'Delhi'),
( 2, 'Rahul', 'HR', 45000, 'Mumbai'),     
( 3, 'Priya', 'IT', 75000, 'Delhi'),      
( 4 , 'Karan', 'Sales', 50000, 'Pune'),      
( 5, 'Neha', 'IT', 55000, 'Mumbai');
select * from employee;
select name from employee where city = 'Mumbai';
select name from employee where salary>50000 and salary<70000;
select name from employee where dpt = 'IT' or dpt = 'Sales';
select name from employee where name like 'P%';
select distinct dpt from employee;
select name from employee order by salary DESC limit 2;
select name,city,salary from employee order by city ASC, salary DESC;
select name from employee where city <> 'Delhi';
select name,salary from employee order by salary desc limit 1 offset 1;
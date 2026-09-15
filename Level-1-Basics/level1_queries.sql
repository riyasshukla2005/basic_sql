create database company_db;  --creating a database
use company_db;
show databases;
create table employees (     --create employee table with attributes
id int primary key,
name varchar(50),
department varchar(50),
salary int,
city varchar(50),
age int,
joining_year int
);
insert into employees          --inserting values into the table
values
(1, 'Riya',	'IT', 60000, 'Delhi', 22, 2024),
(2, 'Aman',	'HR', 45000, 'Dehradun', 24, 2023),
(3,	'Neha',	'IT', 75000, 'Delhi', 23, 2022),
(4,	'Rahul', 'Sales', 50000, 'Mumbai', 26, 2023),
(5,	'Priya', 'IT', 80000, 'Dehradun', 25, 2021),
(6,	'Arjun', 'Sales', 55000, 'Delhi', 27, 2022),
(7,	'Sneha', 'HR', 48000, 'Mumbai',	23, 2024),
(8,	'Karan', 'IT', 70000, 'Bangalore', 24, 2023),
(9,	'Ananya', 'Finance', 65000,	'Delhi', 26, 2021),
(10, 'Rohit', 'Finance', 72000, 'Bangalore', 28, 2020);

select * from employees;       --retrieve entire table

select name, city from employees;     --retrieve name and city

select name,salary 
from employees
where salary>70000;

select distinct department from employees;
select name 
from employees 
where city = 'Delhi';

select name
from employees 
order by salary ASC limit 1;

select name
from employees
order by salary DESC limit 3;

select name
from employees
where department = 'IT'
order by salary DESC limit 1;

select * from employees
order by age DESC;

select name, salary
from employees 
where city = 'Delhi'
order by salary DESC limit 2;

update employees set department = 'Finance' where id = 10;
select * from employees;
describe employees;

update employees set salary = 620000 where id = 1;
update employees set city = 'Delhi' where id = 2;
describe employees;
alter table employees add phone varchar(15);
alter table employees drop column phone;
delete from employees where id = 10;

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
select count(*) from employee;
select sum(salary) as total from employee ;
select avg(salary) as avg_salary from employee ;
select min(salary), max(salary) from employee;
select count(*) as total, dpt from employee group by dpt;
select sum(salary) as total_salary,dpt from employee group by dpt;
select avg(salary) as avg_salary, city from employee group by city;
select count(*),dpt from employee group by dpt having count(*) > 2;
select city from employee group by city having avg(salary)>50000;
select count(*), city from employee group by city order by count(*) DESC;
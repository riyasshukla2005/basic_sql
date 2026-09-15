create database company;
use company;
show databases;
create table employee (
emp_id int primary key,
name varchar(50),
department varchar(50),
salary int,
city varchar(50)
);
insert into employee (emp_id,name,department,salary,city)
values
(1, 'Riya', 'CSE', 1000, 'Lucknow'),
(2, 'Harsh', 'IT', 1250, 'Ayodhya'),
(3, 'Himanshu', 'HR', 1452, 'Dehradun');
select name
from employee
where department = 'IT';

select name, salary 
from employee
where salary>1300;

select name, salary
from employee
where department = 'IT' and salary>1000;

select name
from employee
where city = 'Dehradun' or city = 'Lucknow';

select * from employee order by salary Desc;

select name, salary
from employee
where salary>1000
order by salary desc;

select name, salary 
from employee
order by salary desc limit 1;

select count(*) as total
from employee;

select avg(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;

select sum(salary) as total from employee;
select max(salary), min(salary), avg(salary) from employee;
select avg(salary), department 
from employee 
group by department;

select sum(salary) as total
from employee
group by department;

select count(emp_id), department
from employee
group by department;

select department,avg(salary)
from employee 
group by department
having avg(salary)>1200;
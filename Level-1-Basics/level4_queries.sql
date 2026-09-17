create table department (
dpt_id int primary key,
dpt_name varchar(50),
location varchar(50)
);
alter table employee add dpt_id int;
insert into department (dpt_id, dpt_name, location)
values
(101, 'IT', 'Bangalore'),
(102, 'HR', 'Mumbai'),
(103, 'Sales', 'Delhi'),
(104, 'Finance' , 'Pune');
update employee set dpt_id = 101 where id in (1,3,5);
update employee set dpt_id = 102 where id = 2;
update employee set dpt_id = 103 where id = 4;
SELECT id, name, dpt, dpt_id FROM employee;
select * from employee;
select * from department;
select e.name,e.salary,d.dpt_name,d.location
from employee e 
inner join department d
on e.dpt_id = d.dpt_id;

-- 1.
select e.name,e.salary,d.dpt_name,d.location
from employee e
inner join department d
on e.dpt_id = d.dpt_id;

-- 2.
select e.name,e.dpt,d.dpt_name
from employee e
left join department d
on e.dpt_id = d.dpt_id;

-- 3.
select d.dpt_name,d.location,e.name,e.dpt
from department d
left join employee e
on e.dpt_id = d.dpt_id;

-- 4.
select d.dpt_name
from employee e
right join department d
on e.dpt_id = d.dpt_id
where e.id is null;

-- 5.
select e.name
from employee e
left join department d
on e.dpt_id = d.dpt_id
where d.location = 'Mumbai';

-- 6.
select count(e.id) as employee_count, d.dpt_name
from department d
left join employee e
on d.dpt_id = e.dpt_id
group by d.dpt_id,d.dpt_name;

-- 7.
select d.dpt_name,count(e.salary) as total
from department d
left join employee e
on d.dpt_id = e.dpt_id
group by d.dpt_id,d.dpt_name;
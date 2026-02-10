create database uni;
use uni;

create table employee(
emp_id int primary key,
name varchar(50),
manager_id int
);

insert into employee values
(101 , "adam" , 103),
(102 , "bob" , 104),
(103 , "chasey" , null),
(104 , "donald" , 103);

-- union
select name from employee
union
select name from employee;

-- union all
select name from employee
union all
select name from employee;




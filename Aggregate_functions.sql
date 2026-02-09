create database classroom;
use classroom;

create table student(
roll_no int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(50)
);

insert into student
values
(101 , "Anil" , 78 , "C" , "Pune"),
(102 , "Bhumika" , 85 , "B" , "Mumbai"),
(103 , "Chetan" , 96 , "A" , "Mumbai"),
(104 , "Dhruv" , 93 , "A" , "Banglore"),
(105 , "Ajay" , 12 , "F" , "Delhi"),
(106 , "Farah" , 82 , "B" , "Pune");


-- Aggregate Functions with select statement
select count(marks)
from student;

select max(marks)
from student;

select min(marks)
from student;

select sum(marks)
from student;

select avg(marks)
from student;
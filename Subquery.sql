create database subquery;
use subquery;

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
(105 , "Ajay" , 95 , "F" , "Delhi"),
(106 , "Farah" , 82 , "B" , "Pune");

-- Calculate average marks
select avg(marks)
from student;

-- Students with marks greater than fixed value
select name from student 
where marks > 88.1667;

-- Students scoring above average (subquery)
select *
from student 
where marks > (select avg(marks) from student);

-- Students with even roll numbers
select name, roll_no
from student 
where (roll_no % 2 = 0);

-- Highest marks from Delhi students (subquery)
select max(marks)
from (select * from student where city = "delhi") as temp;

-- Highest marks from Mumbai students
select max(marks)
from student
where city = "Mumbai";
 


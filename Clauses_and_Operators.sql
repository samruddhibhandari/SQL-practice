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

select name , marks from student;

select * from student;
select distinct city from student;

-- where clause
select * from student
WHERE marks>80;

select * from student
WHERE city = "Mumbai";

select * from student
WHERE marks<80 and city = "Mumbai";

-- using operators in WHERE
-- Arithmetic Operators
select * from student
WHERE marks+10 > 100;

-- comparison operators
select * from student
WHERE marks = 93;

select * from student
WHERE marks > 80;

-- AND operator
select * from student
where marks > 80 and marks < 90; 

-- OR operator
select * from student
where marks >90 or city = "banglore";

-- BETWEEN operator
select * from student
where marks between 85 and 90;    -- 85 and 90 are inclusive

-- IN operator
select * from student
where city IN ("Delhi" , "Pune");

-- Prints null table 
select * from student
where city IN ("Gurgaon" , "Faridabad");

-- NOT operator
select * from student
where city IN ("Delhi" , "Pune");

-- LIMIT Clause
select * from student 
where marks > 75
limit 3;

-- ORDER BY clause
-- Prints marks in ascending order
select * from student 
ORDER BY marks ASC;

-- Prints marks of top 3 students
select * from student 
ORDER BY marks DESC
LIMIT 3;
 
 -- Group by clause
select city , count(roll_no)
from student
group by city;

select city , avg(marks)
from student
group by city
order by city;

-- Having Clause
select city, count(roll_no)
from student 
group by city
having max(marks) >90;

-- 	Practice
select city
from student 
where grade = "A"
group by city
having max(marks) >=93
order by city DESC;





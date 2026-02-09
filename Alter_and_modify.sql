create database classroom_xyz;
use classroom_xyz;

create table students(
roll_no int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(50)
);

insert into students
values
(101 , "Anil" , 78 , "C" , "Pune"),
(102 , "Bhumika" , 85 , "B" , "Mumbai"),
(103 , "Chetan" , 96 , "A" , "Mumbai"),
(104 , "Dhruv" , 93 , "A" , "Banglore"),
(105 , "Ajay" , 12 , "F" , "Delhi"),
(106 , "Farah" , 82 , "B" , "Pune");

-- Alter table
-- ADD column
alter table students
add column age int not null default 19;

-- Modify column
alter table students
modify age varchar(3); 

-- Rename column
alter table students 
change age student_age int;


-- Drop column
alter table student
drop column age;

-- change table name
alter table student
rename to students;

select * from students;

-- Truncate table
truncate table students;







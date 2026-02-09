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

select *from student;

-- Update operation
set  SQL_SAFE_UPDATES = 0;  -- turned off safe mode

update student
set grade = "O"
where grade = "A";

select grade, name from student; 

update student
set marks = "98"
where roll_no  = 105 ;

select * from student; 

update student
set grade = "O"
where roll_no  = 105 ;

select * from student;

update student
set grade = "A"
where marks between 80 and 90 ;

select * from student;

update student
set marks = marks + 1 ;
select * from student;

update student
set marks = 12
where roll_no = 105;
select * from student;

-- Delete operation
delete from student 
where marks < 33;

-- Delete whole data
delete from student;
select * from student;



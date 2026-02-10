create database views;
use views;

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

create view  view1 as 
select roll_no , name , marks from student;

select * from view1
where marks>90;

drop view view1;

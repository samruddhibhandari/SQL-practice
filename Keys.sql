create database Staff;
use Staff;

create table department(
id int primary key,
name varchar(50)
);

insert into department values
(101 , "English"),
(102 , "IT");

update department
set id = 100
where id = 101;

select * from department;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references department(id)
on update cascade
on delete cascade
);

insert into teacher values
(101, "Adam" , 101),
(102, "Eve" , 102);

select * from teacher;




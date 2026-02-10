create database joins;
use joins;

create table student(
std_id int primary key,
name varchar(50)
);

insert into student values
(101, "Adam"),
(102, "Eve" ),
(103, "Bob" );

select *from student;

create table course(
course_id int primary key,
name varchar(50)
);

insert into course values
(102 , "English"),
(105 , "Maths"),
(103 , "Chem"),
(107 , "Phy");

select *from course;

-- Inner join (all records)
select * 
from student as s
inner join course as c
on s.std_id = c.course_id;

-- Left join (all students)
select * 
from student as s
left join course as c
on s.std_id = c.course_id;

-- Right join (all courses)
select * 
from student as s
right join course as c
on s.std_id = c.course_id;

-- full join (using UNION)
select * 
from student as s
left join course as c
on s.std_id = c.course_id
union
select * 
from student as s
right join course as c
on s.std_id = c.course_id;


-- left exclusive join
select * 
from student as s
left join course as c
on s.std_id = c.course_id
where c.course_id is null;

-- right exclusive join
select * 
from student as s
right join course as c
on s.std_id = c.course_id
where s.std_id is null;

-- full outer join (exclusive)
select * 
from student as s
left join course as c
on s.std_id = c.course_id
where c.course_id is null
union
select * 
from student as s
right join course as c
on s.std_id = c.course_id
where s.std_id is null;


-- self join
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

select a.name as manager_name , b.name
from employee as a
join employee as b
on a.emp_id = b.manager_id;











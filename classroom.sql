create database college;
create database if not exists college;
use college;
CREATE TABLE student(
id INT PRIMARY KEY,
name varchar(50),
age INT NOT NULL 
);

insert into student values(1 , "Samruddhi" , 20);
insert into student values(2 , "Taniya" , 21);
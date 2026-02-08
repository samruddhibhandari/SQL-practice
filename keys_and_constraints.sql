create database xyz_company;
use xyz_company;

create table employee(
emp_id int primary key,
name varchar(50),
email varchar(100) unique,
age int not null);


create table employee(
emp_id int,
name varchar(50),
email varchar(100) unique,
primary key (emp_id , name)
);

insert into employee values
(101 , "ram" , 100000),
(102 , "karan" , 300000);

select * from employee;


create table employee(
emp_id int primary key,
salary int default 25000);

insert into employee(emp_id) values (110);
select * from employee;






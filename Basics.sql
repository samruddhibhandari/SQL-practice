-- Creates a new database named 'college'
create database college;

-- or 
-- Creates the database 'college' only if it does not already exist
-- (Prevents error if the database is already present)
create database if not exists college;

-- Selects the 'college' database to work on
use college;

-- Creates a table named 'student'
CREATE TABLE student(
id INT PRIMARY KEY,                    -- 'id' column, integer type, uniquely identifies each student
name varchar(50),                      -- 'name' column, can store up to 50 characters
age INT NOT NULL                       -- 'age' column, cannot be NULL
);

-- Inserts first record into the student table
insert into student values(1 , "Riya" , 20);
insert into student values(2 , "Taniya" , 21);

-- Displays all records from the student table
select * from student;

-- Shows all tables present in the currently selected database
show tables;

-- Shows all databases available in MySQL
show databases;

-- Deletes the database named 'company' only if it exists
-- (Safe delete, avoids error if database is not present)
Drop database if exists company;
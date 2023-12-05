-- Creating a database
create database me;

-- Activating a database
use me;

-- Creating a table
CREATE TABLE Student (
    ID INT PRIMARY KEY NOT NULL,
    Name TEXT,
    Marks INT
);

-- Seeing the table (* = all or everything)
SELECT 
    *
FROM
    Student;
    
    -- Inserting values in created table
insert into Student values (01, "RUSHIKESH", 50);
insert into Student values (02, "SAKSHI", 60);
insert into Student values (03, "UJWALA", 70);
insert into Student values (04, "SANJAY", 70);
insert into Student values (05, "RUSHDI", 55);

-- Show me desired columns from table
SELECT 
    id, name
FROM
    student;-- MySQL is not case sensitive


CREATE TABLE student_details (
    id INT PRIMARY KEY NOT NULL,
    address TEXT,
    percentage INT
);

-- Inserting values in table
insert into student_details values (1, "Jaysingpur", 75);
insert into student_details values (2, "Shirol", 85);
insert into student_details values (3, "Sangli", 90);
insert into student_details values (4, "Ichalkaranji", 86);
insert into student_details values (5, "Kolhapur", 74);
insert into student_details values (6, "Karad", 75);

select * from student_details;

-- To delete or drop the table from Database
-- Syntax is "drop table student;"(sometimes need a permission)
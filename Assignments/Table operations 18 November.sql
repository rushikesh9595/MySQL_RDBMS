create database Rushikesh;
use Rushikesh;

show tables;
-- select * from student;

CREATE TABLE movies (
    ID INT PRIMARY KEY NOT NULL,
    Title TEXT,
    Director TEXT,
    year INT,
    length_minutes INT
);

SELECT 
    *
FROM
    movies;

insert into movies values (01, "Toy Story", "John Lasseter", 1995, 81);
insert into movies values (02, "A Bug's life", "John Lasseter", 1998, 95);
insert into movies values (03, "Toy Story2", "John Lasseter", 1999,93);
insert into movies values (04, "Monsters, Inc.", "Pete Docter", 2001, 92);
insert into movies values (05, "Finding Nemo", "Andrew Stanton", 2003, 107);
insert into movies values (06, "The Incredibles", "Brad Bird", 2004, 116);
insert into movies values (07, "Cars", "John Lasseter", 2006, 117);
insert into movies values (08, "Ratatouille", "Brad Bird", 2007, 115);
insert into movies values (09, "WALL-E", "Andrew Stanton", 2008, 104);
insert into movies values (10, "Up", "Pete Docter", 2009, 101);
insert into movies values (11, "Toy Story3", "Lee Unkrich", 2010, 103);
insert into movies values (12, "Cars2", "John Lasseter", 2011, 120);
insert into movies values (13, "Brave", "Brenda Chapman", 2012, 102);
insert into movies values (14, "Monsters University","Dan Scanlon", 2013, 110);

SELECT 
    *
FROM
    movies;
    
-- Exercise 1

select title from movies;
select Director from movies;
select title, director from movies;
select title, year from movies;
select * from movies;

## Exercise 2

select id, title from movies where id = 6;
select title, year from movies where year between 2000 AND 2010;
select title, year from movies where year NOT BETWEEN 2000 AND 2010;
select title, year from movies where year = 2003;

/*
## Exercise 3

Its a mutiline comment (/*....*/


select title, director from movies where title like "%Toy Story%";
select title, director from movies where director = "John Lasseter";   -- also use LIKE
select title, director from movies where director != "John Lasseter";  -- (<> = Not equals to) can also use NOT LIKE
select title from movies where title like "%WALL%";  -- can also use "WALL-_" but "_" is used for only 1 missing character

-- Exercise 4
select distinct(Director) from movies order by Director asc;  -- order by sets asc or desc, distinct will return repetitives only once
select id, title, year from movies order by year desc limit 4;    -- limit means 4 values
select id, title from movies order by id asc limit 5;
select id, title from movies order by id asc limit 5 offset 5;     -- offset starts from next row

-- Exercise 5 is homework



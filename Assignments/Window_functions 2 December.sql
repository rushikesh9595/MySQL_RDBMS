use rushikesh;

show tables from rushikesh;

SELECT 
    *
FROM
    movies;

select director, year, row_number() over() as row_num from movies;  -- it gives row number for all the rows


-- window functions 1. row_number()

SELECT 
    *
FROM
    window_data;

select Name, Salary, Designation, row_number() over() as row_numm from window_data;
select Name, Salary, Designation, row_number() over(partition by Designation) as row_numm from window_data;
select Name, Salary, Designation, row_number() over(partition by Designation order by Salary desc) as row_numm from window_data;

-- Window RANK() clause/function

select Name, Salary, Designation, RANK() over() as Rank_data from window_data;
select Name, Salary, Designation, RANK() over(partition by salary) as Rank_data from window_data;
select Name, Salary, Designation, RANK() over(partition by Designation order by Salary desc) as Rank_data from window_data;
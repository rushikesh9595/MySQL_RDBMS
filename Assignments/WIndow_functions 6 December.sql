use employees;

select * from employees;

select emp_no, salary, row_number() over() row_no
from salaries;

select emp_no, salary, row_number() over(partition by emp_no order by salary desc) row_no
from salaries;

select a.emp_no, max(salary) as Max_Salary from
(select emp_no, salary, row_number() over(partition by emp_no order by salary desc) row_no from salaries)
a group by emp_no;

-- Same as above

select a.emp_no, max(salary) as Max_Salary from
(select emp_no, salary from salaries) a group by emp_no;

select emp_no, salary, Rank() over(partition by emp_no order by salary desc) as Rank_
from salaries;

select emp_no, salary, Rank() over(partition by emp_no order by salary desc) as Rank_
from salaries where emp_no = 11839;

select emp_no, salary, dense_rank() over(partition by emp_no order by salary desc) as Rank_  -- dense_rank() will assign same rank to duplicate values
from salaries where emp_no = 11839;

/*
Lag and Lead functions
Lag for previous records
Lead for next
*/

select emp_no, salary, lag(salary) over() as Lag_   -- it makes salary+1 for Lag_ column
from salaries;

select emp_no, salary, lag(salary) over(partition by emp_no order by salary desc) as Lag_  -- same as above with sorting
from salaries;

select emp_no, salary, lag(salary) over() as Lag_   -- it makes salary+1 for Lag_ column i.e previous value
from salaries;

select emp_no, salary, lag(salary) over() as Lag_   -- it makes salary+1 for Lag_ column
from salaries;

select emp_no, salary, lag(salary) over() as Lag_   -- it makes salary+1 for Lag_ column
from salaries;

select emp_no, salary, lead(salary) over() as Lead_   -- it drops 1st salary value and start lead_ with 2nd salary value i.e next values
from salaries;

select *, 
max(salary) over() Max_salary,
min(salary) over() Min_Salary from salaries;

select *, 
avg(salary) over(partition by emp_no) Sum_salary
from salaries;

select * from employees;

select emp_no, first_name, Last_name, 
if(gender = 'M', "Male", "Female") as Gender_
from employees;

select emp_no, First_name, Last_name,
case gender when "M" then "Male"
else "Female" end as Gender_ from employees;

select * from salaries; 

select emp_no, salary,
case when salary < 60000 then "Salary less than 60000"
when  salary > 60000 then "Salary greater than 60000" end as Salary_order
from salaries;
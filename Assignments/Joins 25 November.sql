use rushikesh;

-- MySQL support only CSV or JSON files
SELECT 
    *
FROM
    movie_sales order by Movie_id asc;
SELECT 
    *
FROM
    movies;

 -- Exercise 6
SELECT 
    id, title, domestic_sales, international_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id order by id asc;-- m and m1 are alais for both tables
    
SELECT 
    title, domestic_sales, international_sales
FROM
    movies m
        JOIN   -- inner join
    movie_sales m1 ON m.id = m1.movie_id
WHERE
    international_sales > domestic_sales;
    
SELECT 
    title, rating
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id
ORDER BY rating DESC;
    
    -- Exercise 7 
    
    select * from building_capacity;
    select * from employee_building;
    
    select distinct(building) from employee_building;
    select * from building_capacity;
    
    select distinct (building_name), role
    from building_capacity b
    left join
    employee_building b1
    on b.building_name = b1.building;
    
    -- Exercise 8 Null
    
    Select name, role, Building from employee_building
    where building is null;
    
    select distinct(building_name), role from building_capacity b
    left join employee_building b1
    on b.building_name = b1.Building
    where role is null;   
    
    create temporary table rush   -- creates temporary table which will not take space and will end if session ends
    (
    select role, name from employee_building);
    
    select * from rush;
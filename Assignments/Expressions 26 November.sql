use rushikesh;

-- Exercise 9

SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.Movie_id;
    
SELECT 
    *
FROM
    movie_sales;
    
SELECT 
    title, rating * 10 AS Percent_rating
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.Movie_id;
    
SELECT 
    title, year AS Even_year
FROM
    movies
WHERE
    year % 2 = 0;-- modulo will return values with remainder 0
    
SELECT 
    *
FROM
    movie_sales;
    
    -- Create views or virtual table to store table but it wont take up your much space
    
CREATE VIEW comb_mv1_sales AS
    (SELECT 
        title,
        (domestic_sales + international_sales) / 1000000 AS combined_sales
    FROM
        movies m
            INNER JOIN
        movie_sales m1 ON m.id = m1.Movie_id);
    
SELECT 
    *
FROM
    comb_mv1_sales;
    
    -- Exercise 10
    
SELECT 
    *
FROM
    employee_building;
    
SELECT 
    name, MAX(years_employed) AS max_years_employed
FROM
    employee_building
GROUP BY name
ORDER BY max_years_employed DESC
LIMIT 1;

SELECT 
    role, AVG(years_employed) AS Avg_years
FROM
    employee_building
GROUP BY role;

SELECT 
    role, SUM(years_employed) AS sum_years
FROM
    employee_building
GROUP BY role;

-- group by is used after where clause for filtering
-- having is used to filter grouped rows further like having avg_years > 2

-- Exercise 11
SELECT 
    role, LENGTH(role) AS num_artist
FROM
    employee_building
WHERE
    role = 'artist'
GROUP BY role;-- also use count(*) i.e all

SELECT 
    role, count(*)
FROM
    employee_building
GROUP BY role;

SELECT 
    role, SUM(years_employed) AS sum_years
FROM
    employee_building
WHERE
    role = 'engineer'
GROUP BY role;
-- or
SELECT 
    role, SUM(years_employed) AS sum_years
FROM
    employee_building
GROUP BY role
HAVING role = 'engineer';

-- How to connect Python with MySQL and pull data from there
    
    
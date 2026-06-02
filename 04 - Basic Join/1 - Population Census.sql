-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/asian-population/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT
SUM(c.population) AS total_population
FROM city c 
INNER JOIN country r
ON c.countrycode = r.code
WHERE r.continent LIKE 'Asia';
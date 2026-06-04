-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
r.continent,
FLOOR(AVG(c.population))
FROM city c
INNER JOIN country r
ON c.countrycode = r.code
GROUP BY r.continent;
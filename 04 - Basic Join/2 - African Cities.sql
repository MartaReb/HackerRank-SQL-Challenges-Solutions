-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/african-cities/problem
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT c.name
FROM city c
INNER JOIN country r
ON c.countrycode = r.code
WHERE r.continent = 'Africa';
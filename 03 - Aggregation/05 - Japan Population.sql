-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/japan-population/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
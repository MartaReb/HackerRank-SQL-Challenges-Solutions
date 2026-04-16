-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/population-density-difference/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/revising-the-select-query/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT *
FROM CITY
WHERE population > 100000
AND countrycode = 'USA';

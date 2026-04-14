-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;
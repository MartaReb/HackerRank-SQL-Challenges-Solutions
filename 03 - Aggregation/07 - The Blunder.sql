-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/the-blunder/problem
-- Difficulty: Easy
-- Max Score: 15
-- DBMS: mySQL

-- ========================
--         Solution
-- ========================

SELECT CEILING(AVG(Salary)-AVG(REPLACE(Salary,'0','')))
FROM EMPLOYEES;

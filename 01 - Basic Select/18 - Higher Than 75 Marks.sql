-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- Difficulty: Easy
-- Max Score: 15
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID;
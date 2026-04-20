-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- Difficulty: Easy
-- Max Score: 20
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT salary * months AS earnings, COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC 
LIMIT 1;
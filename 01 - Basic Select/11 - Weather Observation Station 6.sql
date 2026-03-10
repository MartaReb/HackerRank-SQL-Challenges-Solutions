-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('A', 'E', 'I', 'O', 'U');
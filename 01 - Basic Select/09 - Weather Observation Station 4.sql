-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- Difficulty: Easy
-- Max Score: 10
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
    COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
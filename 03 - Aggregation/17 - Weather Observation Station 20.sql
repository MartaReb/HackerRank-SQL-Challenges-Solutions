-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
-- Difficulty: Medium
-- Max Score: 40
-- DBMS: mySQL

-- ========================
--         Solution
-- ========================

SELECT ROUND(AVG(LAT_N), 4) AS "Median"
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) data
WHERE row_num IN (FLOOR((total_rows + 1) / 2), CEIL((total_rows + 1) / 2));
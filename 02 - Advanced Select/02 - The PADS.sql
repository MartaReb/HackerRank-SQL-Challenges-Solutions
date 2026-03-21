-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/the-pads/problem
-- Difficulty: Medium
-- Max Score: 30
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
    CONCAT(Name,'(',LEFT(Occupation,1),')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT
    CONCAT('There are a total of ', COUNT(Occupation),' ', LOWER(Occupation),'s.')
FROM OCCUPATIONS   
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation;
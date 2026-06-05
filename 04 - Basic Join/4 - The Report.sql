-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/the-report/problem
-- Max Score: 20
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
    CASE 
        WHEN GRADE >= 8 THEN name
        ELSE 'NULL'
    END AS names, 
    grade, 
    marks
FROM students 
JOIN grades  
    ON marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC, name ASC;
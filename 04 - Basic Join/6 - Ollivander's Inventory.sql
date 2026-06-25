-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
-- Max Score: 30
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
    w.id,
    p.age,
    w.coins_needed,
    w.power
FROM wands w
LEFT JOIN wands_property p
ON w.code = p.code
WHERE p.is_evil = 0 AND w.coins_needed = 
    (SELECT MIN(coins_needed)
    FROM wands
    WHERE code = w.code
    AND power = w.power)
ORDER BY w.power DESC, p.age DESC;


--Solution using Window Function & CTE

-- Why it's better than Correlated Subqueries:
-- 1. Performance: Processes data in a single pass instead of a nested loop (no row-by-row re-scanning of the table), making it highly scalable for large datasets.
-- 2. Readability & Maintenance: Separates data ranking from filtering into logical, top-to-bottom steps using a CTE.

WITH RankedWands AS (
    SELECT 
        w.id, p.age, w.coins_needed, w.power,
        ROW_NUMBER() OVER(PARTITION BY p.code, w.power ORDER BY w.coins_needed ASC) as rn
    FROM wands w
    LEFT JOIN wands_property p ON w.code = p.code
    WHERE p.is_evil = 0
)
SELECT id, age, coins_needed, power
FROM RankedWands
WHERE rn = 1
ORDER BY power DESC, age DESC;
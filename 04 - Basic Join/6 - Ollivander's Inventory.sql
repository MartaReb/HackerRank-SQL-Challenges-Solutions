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
-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/full-score/problem
-- Max Score: 30
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT
h.hacker_id, h.name
FROM hackers h
INNER JOIN submissions s
ON s.hacker_id = h.hacker_id
INNER JOIN challenges c
ON s.challenge_id = c.challenge_id
INNER JOIN difficulty d
ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.submission_id)> 1
ORDER BY COUNT(s.submission_id) DESC, h.hacker_id ASC;
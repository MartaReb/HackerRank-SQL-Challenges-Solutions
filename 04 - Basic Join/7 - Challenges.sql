-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/challenges/problem
-- Max Score: 30
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

WITH ChallengesPerHacker AS (
    -- Step 1: Calculate the total number of challenges created by each hacker
    SELECT 
        h.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS total_challenges
    FROM hackers h
    JOIN challenges c 
    ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
),
ChallengeCounts AS (
    -- Step 2: Count how many hackers achieved each specific number of challenges
    SELECT 
        total_challenges, 
        COUNT(*) AS how_many_hackers
    FROM ChallengesPerHacker
    GROUP BY total_challenges
)

-- Step 3: Filter and extract the final dataset based on the business logic
SELECT 
    cph.hacker_id, 
    cph.name, 
    cph.total_challenges
FROM ChallengesPerHacker cph
JOIN ChallengeCounts cc 
ON cph.total_challenges = cc.total_challenges
WHERE 
    -- Condition 1: The number of challenges is unique (only 1 hacker has this count)
    cc.how_many_hackers = 1 
    OR 
    -- Condition 2: The count is the absolute maximum achieved in the entire database
    cph.total_challenges = (SELECT MAX(total_challenges) FROM ChallengesPerHacker)
ORDER BY cph.total_challenges DESC, cph.hacker_id;
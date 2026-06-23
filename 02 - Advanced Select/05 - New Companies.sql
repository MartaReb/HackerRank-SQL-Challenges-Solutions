-- ========================
--       Information
-- ========================

-- Direct Link: hhttps://www.hackerrank.com/challenges/the-company/problem
-- Difficulty: Medium
-- Max Score: 30
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

SELECT 
    company_code, 
    founder,
    (SELECT COUNT(DISTINCT lead_manager_code) FROM lead_manager WHERE company_code = c.company_code ),
    (SELECT COUNT(DISTINCT senior_manager_code) FROM senior_manager WHERE company_code = c.company_code ),
    (SELECT COUNT(DISTINCT manager_code) FROM manager WHERE company_code = c.company_code ),
    (SELECT COUNT(DISTINCT employee_code) FROM employee WHERE company_code = c.company_code )
FROM company c
ORDER BY company_code;


-- Alternative Solution using LEFT JOIN & GROUP BY
-- This approach is significantly more efficient than using correlated subqueries. 
-- Instead of executing 4 separate subqueries for every single row in the Company table (which causes performance issues on large datasets), 
-- it performs bulk joins and aggregates the data in a single pass. 

SELECT
    c.company_code, 
    c.founder, 
    COUNT(DISTINCT lm.lead_manager_code),
    COUNT(DISTINCT sm.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code) 
FROM company c
LEFT JOIN lead_manager lm   
ON c.company_code = lm.company_code
LEFT JOIN senior_manager sm 
ON lm.lead_manager_code = sm.lead_manager_code
LEFT JOIN manager m         
ON sm.senior_manager_code = m.senior_manager_code
LEFT JOIN employee e        
ON m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
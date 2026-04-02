-- ========================
--       Information
-- ========================

-- Direct Link: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- Difficulty: Medium
-- Max Score: 30
-- DBMS: MySQL

-- ========================
--         Solution
-- ========================

-- DISTINCT removes duplicates caused by nodes having multiple children
SELECT DISTINCT b.N,
    CASE
    -- If the node has no parent, it is the root
        WHEN b.P IS NULL THEN 'Root'
    -- If there is no matching child (no row where this node is a parent), 
    -- then c.N will be NULL → this node has no children → Leaf    
        WHEN c.N IS NULL THEN 'Leaf'
    -- Otherwise, the node has both a parent and at least one child → Inner node
        ELSE 'Inner'
    END AS NodeType
FROM BST b
    -- LEFT JOIN joins the table to itself to find children of each node
    -- - If a node has children → we get matching rows from "c"
    -- - If a node has NO children → c columns will be NULL
LEFT JOIN BST c 
    ON b.N = c.P
ORDER BY b.N;

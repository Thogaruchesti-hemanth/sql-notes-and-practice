-- =============================================================
-- 📅 DAY 29: OPTIMIZE QUERIES, ADD INDEXES
-- =============================================================
-- 🔍 MAIN FOCUS: Query Performance Optimization, Index Design, 
--               Index Usage Scenarios, Query Cost Analysis
-- =============================================================


-- =============================================================
-- 🗂️ CONTEXT: 
-- You are working for a medium-sized e-commerce company. 
-- The business deals with orders, customers, and high-volume 
-- search queries across multiple columns. Query speed and 
-- scalability are crucial.
-- =============================================================


-- =============================================================
-- 🧾 TABLE STRUCTURES
-- =============================================================

-- 📄 TABLE: customers

-- +-------------+--------------+----------------------------+
-- | Column Name | Data Type    | Description                |
-- +-------------+--------------+----------------------------+
-- | customer_id | INT          | Primary Key                |
-- | name        | VARCHAR(100) | Customer Full Name         |
-- | email       | VARCHAR(100) | Customer Email Address     |
-- | country     | VARCHAR(50)  | Country of Residence       |
-- | created_at  | DATE         | Account Creation Date      |
-- +-------------+--------------+----------------------------+


-- 📄 TABLE: orders

-- +-----------+------------+----------------------------+
-- | Column    | Data Type  | Description                |
-- +-----------+------------+----------------------------+
-- | order_id  | INT        | Primary Key                |
-- | customer_id | INT      | Foreign Key -> customers   |
-- | order_date | DATE      | Date of the Order          |
-- | amount    | DECIMAL    | Order Amount in USD        |
-- | status    | VARCHAR(20)| Status (e.g., shipped)     |
-- +-----------+------------+----------------------------+



-- =============================================================
-- 🧪 SAMPLE DATA
-- =============================================================

-- 📄 customers

-- +-------------+------------------+-----------------------+------------+-------------+
-- | customer_id | name             | email                 | country    | created_at  |
-- +-------------+------------------+-----------------------+------------+-------------+
-- | 1           | Alice Johnson     | alice@email.com       | USA        | 2023-01-15  |
-- | 2           | Bob Smith         | bob@email.com         | Canada     | 2023-02-20  |
-- | 3           | Charlie Zhang     | charlie@email.com     | UK         | 2023-03-05  |
-- | 4           | Dana Lee          | dana@email.com        | Australia  | 2023-04-12  |
-- | 5           | Evan Cruz         | evan@email.com        | USA        | 2023-05-01  |
-- +-------------+------------------+-----------------------+------------+-------------+


-- 📄 orders

-- +----------+-------------+-------------+--------+----------+
-- | order_id | customer_id | order_date  | amount | status   |
-- +----------+-------------+-------------+--------+----------+
-- | 101      | 1           | 2023-06-01  | 120.50 | shipped  |
-- | 102      | 2           | 2023-06-03  | 89.99  | pending  |
-- | 103      | 3           | 2023-06-05  | 49.90  | shipped  |
-- | 104      | 1           | 2023-06-07  | 220.00 | shipped  |
-- | 105      | 5           | 2023-06-10  | 35.00  | cancelled|
-- | 106      | 2           | 2023-06-12  | 199.99 | shipped  |
-- | 107      | 4           | 2023-06-15  | 450.00 | shipped  |
-- | 108      | 3           | 2023-06-20  | 10.00  | returned |
-- +----------+-------------+-------------+--------+----------+


-- =============================================================
-- ❓ 35 PRACTICE QUESTIONS (Focus: Query Optimization, Indexing)
-- =============================================================

-- 🔹 Basics & Query Planning
-- -------------------------------------------------------------
-- 1. Identify which column(s) in the `orders` table are good candidates for indexing.
-- 2. Check if indexing the `customer_id` column in `orders` improves join performance.
-- 3. How would you find out which queries are running slow on these tables?
-- 4. What’s the impact of indexing a low-cardinality column like `status`?
-- 5. Use `EXPLAIN` (or equivalent) to understand a query’s performance plan.

-- 🔹 Index Use Cases
-- -------------------------------------------------------------
-- 6. Suggest an index to speed up queries filtering orders by `order_date`.
-- 7. If users frequently search by `email`, what type of index is most helpful?
-- 8. Why might a composite index on `(customer_id, order_date)` be better than two separate indexes?
-- 9. When does a multi-column index **not** help a query?
-- 10. Should we index `amount` if we often filter with range conditions like `amount > 100`?

-- 🔹 Practical Scenarios
-- -------------------------------------------------------------
-- 11. Write a query to get all orders from customers in 'USA'. How can this query be optimized?
-- 12. Optimize a query that gets the total spending of each customer.
-- 13. A dashboard shows today's shipped orders by country. How can this be made efficient?
-- 14. How would indexing `created_at` help with customer retention analysis?
-- 15. Explain the trade-offs between indexing and write performance.

-- 🔹 Advanced Indexing
-- -------------------------------------------------------------
-- 16. What is a covering index and how would it apply to this dataset?
-- 17. If we create an index on `status`, will it help when filtering by `status = 'shipped'`?
-- 18. Should we index `email` even if it's unique? Why or why not?
-- 19. Propose a partial index strategy on `orders` table.
-- 20. Can you add a functional index to optimize case-insensitive email searches?

-- 🔹 Query Refactoring for Performance
-- -------------------------------------------------------------
-- 21. Rewrite a query that joins `customers` and `orders` to minimize scanned rows.
-- 22. How can you use subqueries or CTEs to optimize long-running aggregations?
-- 23. What’s a good indexing strategy if 90% of queries are on recent order dates?
-- 24. Explore indexing strategies to improve GROUP BY operations on `country`.

-- 🔹 Maintenance & Monitoring
-- -------------------------------------------------------------
-- 25. How do you check if an index is unused or redundant?
-- 26. How does index bloat affect query speed and what can you do about it?
-- 27. How often should indexes be rebuilt or reanalyzed?
-- 28. What tool would you use to benchmark queries before and after indexing?
-- 29. How would you decide between a b-tree index and a hash index?

-- 🔹 Applied Exercises
-- -------------------------------------------------------------
-- 30. Suggest two different indexes: one for OLTP use and one for OLAP use on these tables.
-- 31. Simulate a scenario where an index actually slows down performance.
-- 32. What is the impact of indexing NULLable columns? Try it on `status`.
-- 33. Identify the top 3 queries that would benefit most from indexing in this dataset.
-- 34. What composite indexes would help if frequent queries filter by `country`, `status`, and `amount`?
-- 35. Explain when a full table scan is better than using an index.

-- =============================================================
-- 🔜 Tomorrow's Topic: "Day 31: PostgreSQL-specific features"
-- Get ready to explore: JSONB fields, ARRAYs, GENERATED columns,
-- UPSERTS (ON CONFLICT), and more PostgreSQL-only goodies!
-- =============================================================

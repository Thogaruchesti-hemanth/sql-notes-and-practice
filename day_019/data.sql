-- 📘 Day 19: Indexes (Intro)
-- --------------------------
-- Context: E-commerce system managing customers and their orders.
-- Today’s practice focuses on exploring how indexes improve query performance.
-- This includes identifying columns that benefit from indexing and conceptualizing
-- the difference between clustered and non-clustered indexes.

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. orders

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name              | email                 | city         | join_date  |
-- |-------------|-------------------|------------------------|--------------|------------|
-- | 101         | Aanya Sharma      | aanya@mail.com         | Delhi        | 2022-04-18 |
-- | 102         | Rajat Verma       | rajatv99@mail.com      | Mumbai       | 2021-09-05 |
-- | 103         | Meena Krishnan    | meena.k@mail.com       | Chennai      | 2023-01-12 |
-- | 104         | Kunal Kapoor      | kunal.k@mail.com       | Bangalore    | 2020-07-28 |
-- | 105         | Zoya Fernandes    | zoya.f@mail.com        | Mumbai       | 2023-06-22 |
-- | 106         | Irfan Qureshi     | irfanq@mail.com        | Hyderabad    | 2022-11-03 |
-- | 107         | Neha Das          | neha.das@mail.com      | Delhi        | 2023-03-17 |

-- ===================================================
-- Table: orders
-- ===================================================
-- | order_id | customer_id | order_date  | status     | total_amount |
-- |----------|-------------|-------------|------------|--------------|
-- | 5001     | 101         | 2023-07-01  | Delivered  | 450.00       |
-- | 5002     | 104         | 2023-06-18  | Shipped    | 1199.00      |
-- | 5003     | 103         | 2023-07-03  | Pending    | 299.99       |
-- | 5004     | 102         | 2023-07-04  | Delivered  | 799.00       |
-- | 5005     | 105         | 2023-07-04  | Cancelled  | 0.00         |
-- | 5006     | 101         | 2023-07-06  | Delivered  | 199.50       |
-- | 5007     | 107         | 2023-07-07  | Pending    | 950.00       |
-- | 5008     | 106         | 2023-07-07  | Delivered  | 1399.99      |

-- 📝 Instructions:
-- - Manually create these tables with appropriate data types
-- - Identify which columns are good candidates for indexing
-- - Think about primary key vs secondary indexes

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic Indexing Concepts (Q1–Q10)
-- 1. Which columns in the `customers` table are best suited for indexing?
-- 2. What are the benefits of indexing the `customer_id` column in both tables?
-- 3. Would indexing the `email` column be useful? Why or why not?
-- 4. How does indexing the `city` column help when filtering customer location?
-- 5. What is a primary index, and which column acts as it in the `orders` table?
-- 6. What is the difference between clustered and non-clustered indexes?
-- 7. Can an index be created on multiple columns? If yes, give an example using the `orders` table.
-- 8. Why should we avoid indexing columns that have mostly unique values but aren't queried often?
-- 9. What is the impact of indexing on INSERT or UPDATE operations?
-- 10. How can you check existing indexes on a table in SQL?

-- 🔹 Real-world Scenarios (Q11–Q20)
-- 11. You're running frequent searches using customer's city — should you index the `city` column?
-- 12. Users often search for orders placed after a specific date. Would indexing `order_date` help?
-- 13. Which column would be most effective to index to improve JOIN performance between `orders` and `customers`?
-- 14. Should you index the `status` column of orders? Why or why not?
-- 15. How would adding an index to `email` help with login validation systems?
-- 16. Would indexing `total_amount` be beneficial for range queries? Justify your answer.
-- 17. What index would you create to speed up queries filtering orders by customer_id and order_date together?
-- 18. What is index selectivity and why does it matter when choosing a column to index?
-- 19. Why shouldn't you index every column in a table?
-- 20. In what scenario is a composite (multi-column) index more efficient than individual indexes?

-- 🔹 Query Optimization & Index Analysis (Q21–Q28)
-- 21. How does the presence of an index impact query execution plans?
-- 22. Use EXPLAIN (or similar) to compare query performance with and without index on `orders.order_date`.
-- 23. Would an index on `status` significantly help if 90% of the orders are marked "Delivered"?
-- 24. You have a dashboard showing daily sales totals — which index would help speed up these reports?
-- 25. Should foreign key columns be indexed? Explain with `orders.customer_id`.
-- 26. What does a "covering index" mean and how can it apply to the `orders` table?
-- 27. Explain how indexing impacts disk storage usage.
-- 28. What tools or commands can be used in your SQL engine to monitor index usage or performance?

-- 🔹 Advanced Thinking & Design (Q29–Q35)
-- 29. If a table has frequent writes (INSERT/UPDATE), how do you decide what indexes to create?
-- 30. How would you design indexing for a system where users mostly search by name and city together?
-- 31. In high-read/low-write systems, how would your indexing strategy change?
-- 32. Should NULLable columns be indexed? When is it useful?
-- 33. When would you consider dropping an existing index?
-- 34. What are index hints, and how can they affect query performance?
-- 35. Explain a case where adding an index worsened performance instead of improving it.

-- ✅ End of Day 19 Practice
-- Remember, indexes are powerful but come with trade-offs.
-- Tomorrow, we will explore: **Day 20: Stored Procedures**.

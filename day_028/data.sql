-- Day 28: Final Capstone Project
-- Topics Covered: All Core SQL Concepts (SELECT, JOIN, GROUP BY, HAVING, Subqueries, Aggregates, Filtering, Logical Thinking)

-- Context:
-- A complete relational database for an e-commerce platform.
-- It includes customers placing orders, each containing multiple items.
-- Products belong to categories and can have varying stock.
-- Orders are fulfilled by employees from different departments.

-- ======================
-- TABLE: customers
-- ======================
-- | customer_id | first_name | last_name | email               | city         | join_date  |
-- |-------------|------------|-----------|---------------------|--------------|------------|
-- | 1           | Alice      | Brown     | alice@example.com   | New York     | 2022-01-10 |
-- | 2           | Bob        | Smith     | bob@example.com     | Los Angeles  | 2023-03-15 |
-- | 3           | Charlie    | Davis     | charlie@example.com | Chicago      | 2022-07-22 |
-- | 4           | Diana      | Green     | diana@example.com   | Miami        | 2021-11-30 |

-- ======================
-- TABLE: employees
-- ======================
-- | employee_id | name         | department   | hire_date  |
-- |-------------|--------------|--------------|------------|
-- | 101         | Emma Wilson  | Sales        | 2021-02-20 |
-- | 102         | Liam Johnson | Logistics    | 2020-09-05 |
-- | 103         | Noah Clark   | Sales        | 2022-06-17 |

-- ======================
-- TABLE: categories
-- ======================
-- | category_id | category_name     |
-- |-------------|-------------------|
-- | 1           | Electronics        |
-- | 2           | Clothing           |
-- | 3           | Home Appliances    |

-- ======================
-- TABLE: products
-- ======================
-- | product_id | name                | price  | stock | category_id |
-- |------------|---------------------|--------|-------|-------------|
-- | 201        | Smartphone X        | 700.00 | 15    | 1           |
-- | 202        | Laptop Z            | 1200.00| 10    | 1           |
-- | 203        | T-shirt Classic     | 25.00  | 100   | 2           |
-- | 204        | Microwave 3000      | 150.00 | 8     | 3           |
-- | 205        | Jacket Winter Pro   | 90.00  | 50    | 2           |

-- ======================
-- TABLE: orders
-- ======================
-- | order_id | customer_id | employee_id | order_date  |
-- |----------|-------------|-------------|-------------|
-- | 1001     | 1           | 101         | 2023-01-10  |
-- | 1002     | 2           | 102         | 2023-02-20  |
-- | 1003     | 3           | 101         | 2023-02-25  |
-- | 1004     | 1           | 103         | 2023-03-01  |

-- ======================
-- TABLE: order_items
-- ======================
-- | order_item_id | order_id | product_id | quantity |
-- |---------------|----------|------------|----------|
-- | 1             | 1001     | 201        | 1        |
-- | 2             | 1001     | 203        | 3        |
-- | 3             | 1002     | 204        | 2        |
-- | 4             | 1003     | 205        | 1        |
-- | 5             | 1004     | 202        | 1        |
-- | 6             | 1004     | 203        | 2        |

-- ============================================================
-- 🧠 35 Practice Questions for Day 28: Final Capstone Project
-- ============================================================

-- 1. List all customers and their cities.
-- 2. Find all products that belong to the "Clothing" category.
-- 3. Show all orders placed by customer "Alice Brown".
-- 4. What are the names of employees who handled orders?
-- 5. List all products that are currently out of stock.
-- 6. Show total number of orders placed by each customer.
-- 7. Show the total revenue generated from each product.
-- 8. List all customers who placed more than one order.
-- 9. Find total number of products sold in each category.
-- 10. List top 3 customers who spent the most money.

-- 11. Calculate the average quantity sold per order item.
-- 12. Which city has the most customers?
-- 13. Which employee handled the highest number of orders?
-- 14. Show all orders placed after Feb 1, 2023.
-- 15. Find the name and price of the most expensive product.
-- 16. List product names that appear in more than one order.
-- 17. Which category has the highest sales revenue?
-- 18. Find employees who haven’t handled any orders yet.
-- 19. List all orders along with customer and employee names.
-- 20. Show all orders with more than 1 item.

-- 21. Which product had the highest quantity sold?
-- 22. For each order, show total order value.
-- 23. List all customers who bought items from Electronics.
-- 24. Find customers who joined before Jan 2022.
-- 25. Show the order with the highest total value.
-- 26. Show products with stock less than 10 units.
-- 27. Which employee had the highest revenue from orders?
-- 28. Find the average order value per customer.
-- 29. List all customers and their total spending.
-- 30. Which category has the most distinct products?

-- 31. Which product was never ordered?
-- 32. Which day had the most number of orders?
-- 33. List all order items where quantity > 2.
-- 34. Show the total revenue earned by each employee.
-- 35. For each category, show total quantity sold and total revenue.

-- 🔄 Tomorrow's Topic Preview: "Day 29: Optimize Queries, Add Indexes"
-- We will learn how to speed up queries, write efficient SQL, and use indexes smartly.

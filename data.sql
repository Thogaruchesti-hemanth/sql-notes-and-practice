-- 📘 Day 14: Review + Real-World Query Practice
-- --------------------------------------------
-- Context: Real-world eCommerce store with customers and their orders.
-- This review day is to apply everything you’ve learned so far (SELECT, WHERE, ORDER BY, GROUP BY, JOINs, etc.)
-- in a realistic scenario with real-life style data.

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. orders

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name            | email                 | city         | join_date  | membership |
-- |-------------|------------------|------------------------|--------------|------------|-------------|
-- | 101         | Aarti Sharma     | aarti@mail.com         | Mumbai       | 2023-01-10 | Silver      |
-- | 102         | Rohan Mehta      | rohan.m@mail.com       | Delhi        | 2022-05-22 | Gold        |
-- | 103         | Sneha Iyer       | sneha@mail.com         | Bengaluru    | 2021-08-14 | Silver      |
-- | 104         | Aman Kapoor      | aman.kapoor@mail.com   | Mumbai       | 2020-12-30 | Platinum    |
-- | 105         | Tanya Agarwal    | tanya.a@mail.com       | Kolkata      | 2022-11-01 | Gold        |
-- | 106         | Vivek Joshi      | vivek.joshi@mail.com   | Delhi        | 2023-06-15 | Silver      |
-- | 107         | Neha Verma       | NULL                   | Hyderabad    | 2021-04-20 | Bronze      |

-- ===================================================
-- Table: orders
-- ===================================================
-- | order_id | customer_id | order_date  | amount  | status     | payment_mode |
-- |----------|-------------|-------------|---------|------------|---------------|
-- | 5001     | 101         | 2023-03-01  | 2500.00 | Delivered  | Credit Card   |
-- | 5002     | 102         | 2023-03-05  | 1200.00 | Cancelled  | UPI           |
-- | 5003     | 103         | 2023-02-20  | 3400.00 | Shipped    | Net Banking   |
-- | 5004     | 101         | 2023-04-01  | 1500.00 | Delivered  | UPI           |
-- | 5005     | 104         | 2023-01-15  | 5000.00 | Delivered  | Credit Card   |
-- | 5006     | 105         | 2023-03-22  | 3200.00 | Returned   | Wallet        |
-- | 5007     | 107         | 2023-04-11  | 900.00  | Delivered  | Cash          |
-- | 5008     | 106         | 2023-05-09  | 2200.00 | Shipped    | UPI           |
-- | 5009     | 103         | 2023-06-02  | 1600.00 | Delivered  | Credit Card   |
-- | 5010     | 102         | 2023-07-01  | 2800.00 | Delivered  | UPI           |

-- 📝 Instructions:
-- Practice writing SQL manually using these tables.
-- Focus on using joins, aggregations, filtering, sorting, grouping, and real-world thinking.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic SELECT & Filtering (Q1–Q7)
-- 1. List all customer names and cities who have membership 'Gold'.
-- 2. Show all orders placed in March 2023.
-- 3. Find customers who joined before 2022.
-- 4. Display orders where the amount is more than 3000.
-- 5. Get customer name and amount for orders above 2000.
-- 6. Find all customers from Delhi.
-- 7. Show all orders with payment_mode as 'UPI'.

-- 🔹 ORDER BY & LIMIT (Q8–Q12)
-- 8. List all customers sorted by join_date (latest first).
-- 9. Show top 5 orders with highest amount.
-- 10. Find 3 earliest orders by order_date.
-- 11. Sort customers alphabetically by name.
-- 12. Show orders sorted by status and then by order_date.

-- 🔹 JOIN Practice (Q13–Q20)
-- 13. Get customer name, order_id, and amount for all orders.
-- 14. Show customers who have placed more than one order.
-- 15. List all orders along with customer email.
-- 16. Find names of customers whose order status is 'Delivered'.
-- 17. Show customer names who have used 'Credit Card' at least once.
-- 18. List all customers who have never placed an order.
-- 19. Count the total number of orders each customer placed.
-- 20. Get the total order amount for each membership type.

-- 🔹 GROUP BY & Aggregation (Q21–Q27)
-- 21. Find the average order amount.
-- 22. Group orders by status and show count of each.
-- 23. Find total revenue generated from 'Delivered' orders.
-- 24. Get maximum order amount for each city.
-- 25. Show membership types with more than 1 customer.
-- 26. Find total amount spent by each customer.
-- 27. Show average, min, and max order amounts by payment mode.

-- 🔹 Real-World Scenarios (Q28–Q35)
-- 28. Who is the highest spending customer?
-- 29. Which customer has the most number of delivered orders?
-- 30. List customers who have placed orders using more than 1 payment method.
-- 31. Find the city with the highest total order amount.
-- 32. Identify customers who placed an order and have NULL email.
-- 33. Count how many customers joined in each year.
-- 34. Find customers who have placed at least 1 order worth over 3000.
-- 35. List customers who joined after placing their first order (data issue check).

-- ✅ End of Day 14 Practice
-- Make sure to practice a mix of JOINs, aggregations, filtering, and logical analysis.
-- Tomorrow: **Day 15 - Subqueries** 📌

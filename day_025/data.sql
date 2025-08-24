-- 📘 Day 25: E-Commerce Database
-- ------------------------------
-- Context: Online store selling various products to customers across different locations.
-- Today’s practice focuses on exploring a simplified **e-commerce system** covering:
-- 👉 Multiple SQL topics like JOINs, filtering, aggregation, conditions, grouping, subqueries, etc.
-- — All operations revolve around analyzing sales, customers, and products.

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. orders

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name            | email                  | city         | join_date  | status   |
-- |-------------|------------------|-------------------------|--------------|------------|----------|
-- | 101         | Priya Sharma     | priya.s@mail.com        | Mumbai       | 2023-01-15 | Active   |
-- | 102         | Rohan Mehta      | rohan.m@mail.com        | Delhi        | 2022-11-03 | Inactive |
-- | 103         | Sneha Kapoor     | sneha.k@mail.com        | Bangalore    | 2023-06-20 | Active   |
-- | 104         | Aarav Joshi      | aarav.joshi@mail.com    | Kolkata      | 2021-09-10 | Active   |
-- | 105         | Anjali Desai     | anjali.d@mail.com       | Mumbai       | 2023-04-12 | Active   |
-- | 106         | Kunal Roy        | NULL                    | Hyderabad    | 2022-12-01 | Suspended|
-- | 107         | Nidhi Chauhan    | nidhi.c@mail.com        | Pune         | 2023-02-25 | Active   |

-- ===================================================
-- Table: orders
-- ===================================================
-- | order_id | customer_id | order_date  | product_name         | category     | quantity | unit_price | total_amount | status     |
-- |----------|-------------|-------------|-----------------------|--------------|----------|------------|--------------|------------|
-- | O1001    | 101         | 2023-03-10  | Wireless Mouse        | Electronics  | 1        | 799.00     | 799.00       | Delivered  |
-- | O1002    | 102         | 2023-01-15  | Yoga Mat              | Fitness      | 2        | 500.00     | 1000.00      | Cancelled  |
-- | O1003    | 103         | 2023-06-25  | LED Monitor 24"       | Electronics  | 1        | 10500.00   | 10500.00     | Shipped    |
-- | O1004    | 104         | 2023-02-12  | Treadmill             | Fitness      | 1        | 25000.00   | 25000.00     | Delivered  |
-- | O1005    | 105         | 2023-04-18  | Office Chair          | Furniture    | 1        | 3499.00    | 3499.00      | Delivered  |
-- | O1006    | 106         | 2023-05-05  | Bluetooth Speaker     | Electronics  | 3        | 1500.00    | 4500.00      | Returned   |
-- | O1007    | 107         | 2023-07-01  | Running Shoes         | Fashion      | 2        | 2200.00    | 4400.00      | Delivered  |
-- | O1008    | 101         | 2023-03-20  | Portable SSD 1TB      | Electronics  | 1        | 5999.00    | 5999.00      | Delivered  |
-- | O1009    | 103         | 2023-07-10  | Resistance Bands Set  | Fitness      | 1        | 899.00     | 899.00       | Shipped    |
-- | O1010    | 105         | 2023-06-22  | Study Table           | Furniture    | 1        | 5000.00    | 5000.00      | Pending    |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing with SELECTs, JOINs, WHERE conditions, aggregations, GROUP BY, subqueries, filtering, sorting.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic SELECT & WHERE Clauses (Q1–Q10)
-- 1. List the names and cities of all customers who joined in 2023.
-- 2. Show all orders that are marked as ‘Delivered’.
-- 3. Find all products under the category 'Fitness'.
-- 4. Display customers from Mumbai or Delhi.
-- 5. Show orders with quantity greater than 1.
-- 6. Retrieve the order details of customer_id 101.
-- 7. Get names of customers whose status is not 'Active'.
-- 8. Find orders placed before '2023-04-01'.
-- 9. List all customers with NULL email addresses.
-- 10. Show all orders where total_amount exceeds 5000.

-- 🔹 JOINs and Aggregation (Q11–Q20)
-- 11. Display customer names along with their product names and order dates.
-- 12. Show the total amount spent by each customer.
-- 13. Find the average unit_price for each product category.
-- 14. List the number of orders per customer.
-- 15. Display the highest order total per category.
-- 16. Show names of customers who placed at least one order in April 2023.
-- 17. Find total revenue generated from Electronics category.
-- 18. List all customers who placed more than one order.
-- 19. Get the most expensive product ever ordered.
-- 20. Show order_id and customer name for all returned orders.

-- 🔹 Filtering, Sorting, Subqueries (Q21–Q30)
-- 21. Display top 3 highest total_amount orders.
-- 22. Show customers who have never placed an order.
-- 23. List all orders where the product name starts with 'P'.
-- 24. Find all categories that have at least 2 orders.
-- 25. Show all products ordered by 'Sneha Kapoor'.
-- 26. List orders where unit_price is below average unit_price across all orders.
-- 27. Find customers who ordered from more than one category.
-- 28. Show all customers who ordered a 'Treadmill' or 'Office Chair'.
-- 29. Retrieve customer(s) who spent the most in total.
-- 30. List all customers who made purchases in June or July 2023.

-- 🔹 Complex Queries & Analysis (Q31–Q35)
-- 31. For each category, show the customer who placed the most expensive order.
-- 32. List customers along with the number of delivered orders they made.
-- 33. Find customers whose total order amount exceeds 10,000.
-- 34. List the names of customers who have at least one order with quantity > 2.
-- 35. Find the most popular product category based on number of orders.

-- ✅ End of Day 25 Practice
-- Today you worked with a real-world **e-commerce database** setup.
-- Review your JOINs, GROUP BYs, filtering, and aggregate logic.
-- 👉 Tomorrow’s topic: **Day 26: HR & Payroll System**

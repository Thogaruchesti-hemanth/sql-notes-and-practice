-- 📘 Day 22: Review + Practice Set
-- --------------------------------
-- Context: Online Retail Store - tracking products, customers, and orders.
-- Today's dataset and questions will reinforce subqueries, conditional logic, views,
-- indexes, stored procedures, and transactions.

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. orders

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name            | email                 | join_date  | loyalty_points | city         |
-- |-------------|------------------|------------------------|------------|----------------|--------------|
-- | 101         | Riya Mehta       | riya.m@mail.com        | 2023-01-05 | 450            | Mumbai       |
-- | 102         | Aman Gupta       | aman.g@mail.com        | 2022-11-12 | 1200           | Delhi        |
-- | 103         | Neha Sharma      | neha.s@mail.com        | 2023-06-20 | 150            | Bengaluru    |
-- | 104         | Rajiv Menon      | NULL                   | 2021-04-18 | 700            | Hyderabad    |
-- | 105         | Priya Desai      | priya.d@mail.com       | 2024-02-22 | NULL           | Mumbai       |
-- | 106         | Tarun Khanna     | tarun.k@mail.com       | 2020-08-03 | 0              | Pune         |

-- ===================================================
-- Table: orders
-- ===================================================
-- | order_id | customer_id | order_date  | amount  | status     | payment_method |
-- |----------|--------------|-------------|---------|------------|----------------|
-- | 5001     | 101          | 2023-07-01  | 850.00  | Delivered  | UPI            |
-- | 5002     | 102          | 2023-07-10  | 560.00  | Cancelled  | Credit Card    |
-- | 5003     | 103          | 2023-07-05  | 120.00  | Delivered  | Cash           |
-- | 5004     | 101          | 2023-07-15  | 430.00  | Shipped    | Debit Card     |
-- | 5005     | 104          | 2023-06-28  | 950.00  | Delivered  | UPI            |
-- | 5006     | 105          | 2023-07-12  | 760.00  | Delivered  | Credit Card    |
-- | 5007     | 106          | 2023-06-30  | 1150.00 | Returned   | Net Banking    |
-- | 5008     | 104          | 2023-07-08  | 300.00  | Cancelled  | Cash           |
-- | 5009     | 102          | 2023-07-15  | 620.00  | Delivered  | UPI            |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing Subqueries, Views, Conditional Logic, Transactions, etc.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Subqueries (Q1–Q6)
-- 1. Find names of customers who placed orders with an amount greater than the average order amount.
-- 2. List customer names who haven’t placed any orders.
-- 3. Show the order_id(s) of the highest order(s).
-- 4. Find the name of the customer who made the lowest order using Cash.
-- 5. List all cities where the total order amount is above 1000.
-- 6. Show customers who placed more than one order.

-- 🔹 Correlated Subqueries (Q7–Q10)
-- 7. Find customers whose latest order is above their average order amount.
-- 8. Show customers who have at least one order with an amount greater than all other customers’ average.
-- 9. List orders where the amount is above the average for that customer.
-- 10. Show customers whose total order value is greater than any other customer from the same city.

-- 🔹 CASE, IF, COALESCE (Q11–Q17)
-- 11. Display all orders with a new column showing ‘High’, ‘Medium’, or ‘Low’ based on amount (e.g., High > 800).
-- 12. List customers with NULL emails as ‘Not Provided’.
-- 13. Create a view that shows order_id, customer name, and a custom label 'Frequent' if they have >1 order.
-- 14. Show all customers with a column that says 'New' if join_date > '2023-01-01', else 'Old'.
-- 15. Create a column showing ‘Valid’ if loyalty_points is not NULL and > 0, otherwise ‘Invalid’.
-- 16. Use COALESCE to show 0 where loyalty_points are NULL.
-- 17. Show customer name and IF they have more than 1000 loyalty points, display 'Gold Member', else 'Regular'.

-- 🔹 Views (Q18–Q21)
-- 18. Create a view `active_orders_view` showing only Delivered or Shipped orders.
-- 19. Create a view that lists customer_id, name, and total amount spent.
-- 20. Create a view with customers and their most recent order date.
-- 21. Create a view that lists customers who used more than 2 different payment methods.

-- 🔹 Indexes Concept (Q22–Q24)
-- 22. Which columns in `orders` would benefit most from indexing and why?
-- 23. Should you index the `status` column in orders? Explain.
-- 24. Explain the impact of indexing `email` in customers on search performance.

-- 🔹 Stored Procedures (Q25–Q29)
-- 25. Write a stored procedure to get all orders placed by a customer given their ID.
-- 26. Create a procedure to update loyalty_points after an order (e.g., add 1 point per 10 currency).
-- 27. Write a procedure to cancel an order and update status and refund logic.
-- 28. Create a procedure that inserts a new customer if email doesn't exist already.
-- 29. Write a procedure that returns total amount spent by a customer in a date range.

-- 🔹 Transactions + ACID (Q30–Q35)
-- 30. Explain a scenario where a transaction is required in this database.
-- 31. Demonstrate a transaction where a new order is placed and points are updated together.
-- 32. Write a rollback example where order insertion fails due to invalid customer_id.
-- 33. Explain how isolation prevents double loyalty points for the same order.
-- 34. What happens if two updates to loyalty_points run concurrently? How would you handle it?
-- 35. Simulate a transaction where order status changes and refund is initiated, then rollback on error.

-- ✅ End of Day 22 Practice
-- Review each topic carefully and practice writing clean SQL.
-- 🧠 Tomorrow: We dive into **Day 23: Student Database**

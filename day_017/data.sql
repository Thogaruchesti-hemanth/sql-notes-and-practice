-- 📘 Day 17: CASE, IF, COALESCE
-- -----------------------------
-- Context: E-commerce platform managing customers and their orders.
-- Today’s practice focuses on conditional expressions in SQL:
-- - `CASE`: for multi-branch logic
-- - `IF`: for simple conditions (MySQL-specific)
-- - `COALESCE`: to handle NULL values gracefully

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. orders

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name           | email                 | membership_level | city         | referred_by |
-- |-------------|----------------|------------------------|------------------|--------------|-------------|
-- | 101         | Aarti Mehta    | aarti@mail.com         | Silver           | Mumbai       | NULL        |
-- | 102         | Rohit Gupta    | rohitg@mail.com        | Gold             | Delhi        | 101         |
-- | 103         | Neha Sharma    | NULL                   | Bronze           | Bangalore    | NULL        |
-- | 104         | Ali Khan       | ali.k@mail.com         | Silver           | Hyderabad    | 103         |
-- | 105         | Sneha Iyer     | sneha.i@mail.com       | NULL             | Chennai      | NULL        |
-- | 106         | Rahul Verma    | rahul.v@mail.com       | Gold             | Delhi        | 102         |
-- | 107         | Kavya Menon    | NULL                   | Bronze           | Kochi        | NULL        |

-- ===================================================
-- Table: orders
-- ===================================================
-- | order_id | customer_id | order_date | total_amount | payment_method | status     |
-- |----------|-------------|------------|--------------|----------------|------------|
-- | O001     | 101         | 2024-11-01 | 2500.00      | Credit Card    | Delivered  |
-- | O002     | 102         | 2024-11-03 | 5400.50      | UPI            | Shipped    |
-- | O003     | 103         | 2024-11-05 | 0.00         | NULL           | Cancelled  |
-- | O004     | 104         | 2024-11-06 | 1200.00      | Debit Card     | Delivered  |
-- | O005     | 105         | 2024-11-07 | 3500.75      | Credit Card    | Processing |
-- | O006     | 106         | 2024-11-09 | NULL         | UPI            | Failed     |
-- | O007     | 107         | 2024-11-10 | 2100.00      | UPI            | Delivered  |
-- | O008     | 104         | 2024-11-11 | 1800.00      | NULL           | Delivered  |
-- | O009     | 106         | 2024-11-12 | 4200.00      | Debit Card     | Cancelled  |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `CASE`, `IF`, and `COALESCE` queries

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 CASE Statements (Q1–Q15)
-- 1. Display each customer's name and a column showing 'High Value' if membership_level is 'Gold', 'Mid Value' for 'Silver', 'Low Value' for 'Bronze', and 'New' if NULL.
-- 2. Show each order_id with a label: 'Completed' for Delivered, 'On the Way' for Shipped, 'In Progress' for Processing, and 'Other' for all else.
-- 3. Display customer_id and order_id with a flag 'Free Order' if total_amount = 0, else 'Paid Order'.
-- 4. Create a list showing customer names and their membership bonus: 20% for Gold, 10% for Silver, 5% for Bronze, and 0% for NULL.
-- 5. Show city-wise customer count and a remark: 'Metro' if city is Delhi or Mumbai, else 'Non-Metro'.
-- 6. List all customers with a column "Referral Status": 'Referred' if referred_by is NOT NULL, else 'Direct'.
-- 7. For each order, show payment method or 'Unknown' using CASE.
-- 8. Display a table with order_id and status remark: 'Success' for Delivered or Shipped, 'Pending' for Processing, 'Failed/Cancelled' otherwise.
-- 9. Show customers with 'Active' if they placed any order, else 'Inactive'.
-- 10. List all customers and display whether their membership level is 'Known' or 'Unknown'.
-- 11. Show all orders and categorize amount as 'High' (>=4000), 'Medium' (2000-3999), or 'Low' (<2000).
-- 12. Show customer name, city, and whether city starts with 'D' or not using CASE.
-- 13. For each customer, add a column: 'Referrer Level' which shows membership_level of the referred_by person.
-- 14. Display all orders with a label: 'Valid' if payment_method is NOT NULL and total_amount > 0.
-- 15. Display order_id and a message: 'Needs Attention' if status is 'Cancelled' or payment_method is NULL.

-- 🔹 IF Conditions (MySQL Only) (Q16–Q20)
-- 16. For each customer, show name and IF they have NULL email, then 'Missing Email', else 'Email Provided'.
-- 17. Show IF total_amount is NULL or 0, then 'No Charge', else 'Charged'.
-- 18. For each order, show payment method and IF it is 'Credit Card', mark as 'Card Used'.
-- 19. Show customer name and IF they are from 'Delhi', then 'North Zone', else 'Other Zone'.
-- 20. Display each order_id with status and IF it’s 'Delivered', label 'Success', otherwise 'Not Delivered'.

-- 🔹 COALESCE Usage (Q21–Q30)
-- 21. Display customer_id and COALESCE(email, 'no-email@domain.com').
-- 22. Show referred_by as 0 if NULL using COALESCE.
-- 23. Display payment_method using COALESCE to replace NULL with 'Not Specified'.
-- 24. Show order_id and COALESCE(total_amount, 0.0).
-- 25. Display all customer names with COALESCE(membership_level, 'Unassigned').
-- 26. Show COALESCE(city, 'Unknown') for all customers.
-- 27. Replace NULL in order payment_method with 'Cash' temporarily using COALESCE.
-- 28. Display order_id and COALESCE(status, 'Pending').
-- 29. Use COALESCE to show customer name and referred_by (use 0 for NULL).
-- 30. List all customers with COALESCE values where possible.

-- 🔹 Combined Concepts (Q31–Q35)
-- 31. List customers with name, city, and status as 'Metro with Membership' or other, using CASE and COALESCE.
-- 32. Display orders with total_amount and a label: 'No Payment Info' if payment_method is NULL or total_amount is NULL.
-- 33. Show customers and use CASE with COALESCE to display referral info as 'Referred by [ID]' or 'No Referral'.
-- 34. Use IF and COALESCE to display order status message like 'Failed', 'Paid', 'Free Order', etc.
-- 35. For each order, use CASE to determine if customer is 'Premium' (Gold), 'Standard' (Silver/Bronze), or 'Basic' (NULL membership).

-- ✅ End of Day 17 Practice
-- Practice using `CASE`, `IF`, and `COALESCE` for smarter, readable SQL logic.
-- 🧠 Tomorrow we will learn: **Day 18: Views**

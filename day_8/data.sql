-- 📘 Day 8: GROUP BY, HAVING
-- --------------------------
-- Context: A sales database for a retail store tracking customers and their purchases.
-- Today’s practice focuses on using `GROUP BY` to group records and `HAVING` to filter grouped results.

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. purchases

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name            | city         | email                    | join_date  |
-- |-------------|------------------|--------------|---------------------------|------------|
-- | 101         | Neha Sharma      | Mumbai       | neha@mail.com             | 2022-01-15 |
-- | 102         | Rohan Mehta      | Delhi        | rohan.mehta@mail.com      | 2021-11-20 |
-- | 103         | Aisha Khan       | Bangalore    | aisha.k@mail.com          | 2023-03-08 |
-- | 104         | Vivek Verma      | Mumbai       | vivek.v@mail.com          | 2022-05-12 |
-- | 105         | Priya Sinha      | Chennai      | priya.sinha@mail.com      | 2023-07-01 |
-- | 106         | Aarav Patel      | Delhi        | aarav.p@mail.com          | 2022-12-30 |
-- | 107         | Kavya Iyer       | Bangalore    | kavya.iyer@mail.com       | 2021-08-18 |

-- ===================================================
-- Table: purchases
-- ===================================================
-- | purchase_id | customer_id | item            | category     | amount  | purchase_date |
-- |-------------|-------------|------------------|--------------|---------|----------------|
-- | P001        | 101         | Bluetooth Speaker| Electronics  | 2500.00 | 2023-01-10     |
-- | P002        | 102         | Headphones       | Electronics  | 3200.00 | 2023-02-18     |
-- | P003        | 103         | T-shirt          | Clothing     | 800.00  | 2023-03-15     |
-- | P004        | 104         | Jeans            | Clothing     | 1200.00 | 2023-01-20     |
-- | P005        | 105         | Blender          | Appliances   | 2100.00 | 2023-04-10     |
-- | P006        | 106         | Refrigerator     | Appliances   | 15000.00| 2022-12-01     |
-- | P007        | 107         | Washing Machine  | Appliances   | 12000.00| 2023-02-05     |
-- | P008        | 101         | Shirt            | Clothing     | 900.00  | 2023-02-12     |
-- | P009        | 102         | Microwave        | Appliances   | 9500.00 | 2023-03-01     |
-- | P010        | 103         | Laptop           | Electronics  | 55000.00| 2023-04-22     |
-- | P011        | 104         | Shoes            | Clothing     | 2000.00 | 2023-03-12     |
-- | P012        | 105         | Jacket           | Clothing     | 1800.00 | 2023-05-19     |
-- | P013        | 106         | TV               | Electronics  | 32000.00| 2023-01-30     |
-- | P014        | 107         | Mixer            | Appliances   | 3000.00 | 2023-03-05     |
-- | P015        | 101         | Mobile Phone     | Electronics  | 15000.00| 2023-06-21     |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `GROUP BY` and `HAVING` queries

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic GROUP BY (Q1–Q10)
-- 1. Show total amount spent by each customer.
-- 2. Count the number of purchases made by each customer.
-- 3. Show total amount spent per city (based on customers).
-- 4. Count how many customers are from each city.
-- 5. Display total purchase amount per category.
-- 6. Find average purchase amount per category.
-- 7. List the number of unique customers per category.
-- 8. Find total amount spent by each customer in Electronics category.
-- 9. Show the number of purchases made in each month (format the date to month).
-- 10. List each category and number of items sold in that category.

-- 🔹 GROUP BY with HAVING (Q11–Q20)
-- 11. Show customers who have spent more than ₹20,000 in total.
-- 12. List cities with more than 1 customer.
-- 13. Display categories where the total amount spent exceeds ₹10,000.
-- 14. Find customers who made more than 2 purchases.
-- 15. List customers who have spent over ₹5,000 on Clothing.
-- 16. Show customers whose average purchase amount is above ₹10,000.
-- 17. Find cities where customers have spent less than ₹5,000 in total.
-- 18. List categories where average purchase amount is greater than ₹3000.
-- 19. Display customers who have made purchases in more than 1 category.
-- 20. List cities where total number of purchases is more than 3.

-- 🔹 Mixed GROUP BY & Aggregations (Q21–Q30)
-- 21. For each customer, show min, max, and avg amount of their purchases.
-- 22. Show the total number of purchases made on each date.
-- 23. Count total items bought per customer per category.
-- 24. For each city, find average amount spent per purchase.
-- 25. Show the highest purchase amount per category.
-- 26. Display number of customers whose total spending is below ₹5,000.
-- 27. For each category, show number of purchases and total revenue.
-- 28. List each customer's total purchases in Appliances.
-- 29. Show how many customers bought from Electronics but not Clothing.
-- 30. Find customers whose purchases include both Clothing and Electronics.

-- 🔹 Advanced Analysis (Q31–Q35)
-- 31. Rank customers based on total spending (use aggregation logic only).
-- 32. Find the customer who spent the most on a single purchase.
-- 33. Find categories where at least 3 items were sold.
-- 34. Identify customers who spent nothing on Electronics.
-- 35. Find customers who made purchases only in one category.

-- ✅ End of Day 8 Practice
-- Practice writing `GROUP BY` queries first, then add `HAVING` clauses.
-- Tomorrow we will learn about `INNER JOIN` to combine data from multiple tables.

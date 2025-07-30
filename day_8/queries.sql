-- 📘 Day 8: GROUP BY, HAVING
-- ----------------------------------------
-- Context: A sales database for a retail store tracking customers and their purchases.
-- Focus: Use of GROUP BY and HAVING to aggregate and filter grouped results.

-- ===================================================
-- ✅ SCHEMA: Create Tables and Sample Data
-- ===================================================

-- Create customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  city VARCHAR(255),
  email VARCHAR(255),
  join_date DATE
);

-- Insert sample customers
INSERT INTO customers (customer_id, name, city, email, join_date) VALUES
(101, 'Neha Sharma', 'Mumbai', 'neha@mail.com', '2022-01-15'),
(102, 'Rohan Mehta', 'Delhi', 'rohan.mehta@mail.com', '2021-11-20'),
(103, 'Aisha Khan', 'Bangalore', 'aisha.k@mail.com', '2023-03-08'),
(104, 'Vivek Verma', 'Mumbai', 'vivek.v@mail.com', '2022-05-12'),
(105, 'Priya Sinha', 'Chennai', 'priya.sinha@mail.com', '2023-07-01'),
(106, 'Aarav Patel', 'Delhi', 'aarav.p@mail.com', '2022-12-30'),
(107, 'Kavya Iyer', 'Bangalore', 'kavya.iyer@mail.com', '2021-08-18');

-- Create purchases table
CREATE TABLE purchases (
  purchase_id VARCHAR(10) PRIMARY KEY,
  customer_id INT,
  item VARCHAR(255),
  category VARCHAR(100),
  amount DECIMAL(10,2),
  purchase_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample purchases
INSERT INTO purchases (purchase_id, customer_id, item, category, amount, purchase_date) VALUES
('P001', 101, 'Bluetooth Speaker', 'Electronics', 2500.00, '2023-01-10'),
('P002', 102, 'Headphones', 'Electronics', 3200.00, '2023-02-18'),
('P003', 103, 'T-shirt', 'Clothing', 800.00, '2023-03-15'),
('P004', 104, 'Jeans', 'Clothing', 1200.00, '2023-01-20'),
('P005', 105, 'Blender', 'Appliances', 2100.00, '2023-04-10'),
('P006', 106, 'Refrigerator', 'Appliances', 15000.00, '2022-12-01'),
('P007', 107, 'Washing Machine', 'Appliances', 12000.00, '2023-02-05'),
('P008', 101, 'Shirt', 'Clothing', 900.00, '2023-02-12'),
('P009', 102, 'Microwave', 'Appliances', 9500.00, '2023-03-01'),
('P010', 103, 'Laptop', 'Electronics', 55000.00, '2023-04-22'),
('P011', 104, 'Shoes', 'Clothing', 2000.00, '2023-03-12'),
('P012', 105, 'Jacket', 'Clothing', 1800.00, '2023-05-19'),
('P013', 106, 'TV', 'Electronics', 32000.00, '2023-01-30'),
('P014', 107, 'Mixer', 'Appliances', 3000.00, '2023-03-05'),
('P015', 101, 'Mobile Phone', 'Electronics', 15000.00, '2023-06-21');

-- ===================================================
-- 🔹 Practice Queries (GROUP BY, HAVING)
-- ===================================================

-- Q1. Show total amount spent by each customer
SELECT customer_id, SUM(amount) AS total_spent
FROM purchases
GROUP BY customer_id;
-- Explanation: Aggregates the purchase amount for each customer.

-- Q2. Count the number of purchases made by each customer
SELECT customer_id, COUNT(*) AS purchase_count
FROM purchases
GROUP BY customer_id;
-- Explanation: Counts how many purchases each customer made.

-- Q3. Show total amount spent per city (based on customers)
SELECT c.city, SUM(p.amount) AS total_spent
FROM customers c
JOIN purchases p ON c.customer_id = p.customer_id
GROUP BY c.city;
-- Explanation: Aggregates total purchase amounts by customer city.

-- Q4. Count how many customers are from each city
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;
-- Explanation: Counts how many customers belong to each city.

-- Q5. Display total purchase amount per category
SELECT category, SUM(amount) AS total_revenue
FROM purchases
GROUP BY category;
-- Explanation: Groups purchases by category and sums the amounts.

-- Q6. Find average purchase amount per category
SELECT category, AVG(amount) AS avg_amount
FROM purchases
GROUP BY category;
-- Explanation: Averages purchase amount within each category.

-- Q7. List the number of unique customers per category
SELECT category, COUNT(DISTINCT customer_id) AS unique_customers
FROM purchases
GROUP BY category;
-- Explanation: Counts distinct customer IDs per category.

-- Q8. Find total amount spent by each customer in Electronics category
SELECT customer_id, SUM(amount) AS electronics_spent
FROM purchases
WHERE category = 'Electronics'
GROUP BY customer_id;
-- Explanation: Filters for Electronics and groups total spent by customer.

-- Q9. Show the number of purchases made in each month
SELECT DATE_FORMAT(purchase_date, '%Y-%m') AS purchase_month, COUNT(*) AS total_purchases
FROM purchases
GROUP BY purchase_month;
-- Explanation: Extracts month-year from date and groups by it.

-- Q10. List each category and number of items sold in that category
SELECT category, COUNT(*) AS items_sold
FROM purchases
GROUP BY category;
-- Explanation: Counts number of purchase records per category.

-- Q11. Show customers who have spent more than ₹20,000 in total
SELECT customer_id, SUM(amount) AS total_spent
FROM purchases
GROUP BY customer_id
HAVING total_spent > 20000;
-- Explanation: Filters customer totals using HAVING.

-- Q12. List cities with more than 1 customer
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING customer_count > 1;
-- Explanation: Shows cities that have more than one customer.

-- Q13. Display categories where the total amount spent exceeds ₹10,000
SELECT category, SUM(amount) AS total_spent
FROM purchases
GROUP BY category
HAVING total_spent > 10000;
-- Explanation: Filters grouped sums above threshold.

-- Q14. Find customers who made more than 2 purchases
SELECT customer_id, COUNT(*) AS purchase_count
FROM purchases
GROUP BY customer_id
HAVING purchase_count > 2;
-- Explanation: Filters for customers with more than 2 purchases.

-- Q15. List customers who have spent over ₹5,000 on Clothing
SELECT customer_id, SUM(amount) AS clothing_spent
FROM purchases
WHERE category = 'Clothing'
GROUP BY customer_id
HAVING clothing_spent > 5000;
-- Explanation: Checks category-specific spending.

-- Q16. Show customers whose average purchase amount is above ₹10,000
SELECT customer_id, AVG(amount) AS avg_spent
FROM purchases
GROUP BY customer_id
HAVING avg_spent > 10000;
-- Explanation: Filters on average value using HAVING.

-- Q17. Find cities where customers have spent less than ₹5,000 in total
SELECT c.city, SUM(p.amount) AS total_spent
FROM customers c
JOIN purchases p ON c.customer_id = p.customer_id
GROUP BY c.city
HAVING total_spent < 5000;
-- Explanation: Aggregates total per city and filters low spenders.

-- Q18. List categories where average purchase amount is greater than ₹3000
SELECT category, AVG(amount) AS avg_amount
FROM purchases
GROUP BY category
HAVING avg_amount > 3000;
-- Explanation: Filters category-level average spending.

-- Q19. Display customers who have made purchases in more than 1 category
SELECT customer_id, COUNT(DISTINCT category) AS category_count
FROM purchases
GROUP BY customer_id
HAVING category_count > 1;
-- Explanation: Finds customers purchasing across multiple categories.

-- Q20. List cities where total number of purchases is more than 3
SELECT c.city, COUNT(*) AS total_purchases
FROM customers c
JOIN purchases p ON c.customer_id = p.customer_id
GROUP BY c.city
HAVING total_purchases > 3;
-- Explanation: Groups by city and filters by purchase count.

-- ===================================================
-- 🔹 Mixed GROUP BY & Aggregations (Q21–Q30)
-- ===================================================

-- Q21. For each customer, show min, max, and avg amount of their purchases.
SELECT customer_id, MIN(amount) AS min_amt, MAX(amount) AS max_amt, AVG(amount) AS avg_amt
FROM purchases
GROUP BY customer_id;

-- Q22. Show the total number of purchases made on each date.
SELECT purchase_date, COUNT(*) AS total_purchases
FROM purchases
GROUP BY purchase_date;

-- Q23. Count total items bought per customer per category.
SELECT customer_id, category, COUNT(*) AS items_bought
FROM purchases
GROUP BY customer_id, category;

-- Q24. For each city, find average amount spent per purchase.
SELECT c.city, AVG(p.amount) AS avg_purchase
FROM customers c
JOIN purchases p ON c.customer_id = p.customer_id
GROUP BY c.city;

-- Q25. Show the highest purchase amount per category.
SELECT category, MAX(amount) AS highest_amount
FROM purchases
GROUP BY category;

-- Q26. Display number of customers whose total spending is below ₹5,000.
SELECT COUNT(*) AS low_spenders
FROM (
  SELECT customer_id, SUM(amount) AS total
  FROM purchases
  GROUP BY customer_id
  HAVING SUM(amount) < 5000
) AS sub;

-- Q27. For each category, show number of purchases and total revenue.
SELECT category, COUNT(*) AS total_purchases, SUM(amount) AS revenue
FROM purchases
GROUP BY category;

-- Q28. List each customer's total purchases in Appliances.
SELECT customer_id, SUM(amount) AS appliances_total
FROM purchases
WHERE category = 'Appliances'
GROUP BY customer_id;

-- Q29. Show how many customers bought from Electronics but not Clothing.
SELECT COUNT(*) AS customers_elec_not_cloth
FROM (
  SELECT customer_id
  FROM purchases
  GROUP BY customer_id
  HAVING SUM(CASE WHEN category = 'Electronics' THEN 1 ELSE 0 END) > 0
     AND SUM(CASE WHEN category = 'Clothing' THEN 1 ELSE 0 END) = 0
) AS sub;

-- Q30. Find customers whose purchases include both Clothing and Electronics.
SELECT customer_id
FROM purchases
GROUP BY customer_id
HAVING SUM(CASE WHEN category = 'Clothing' THEN 1 ELSE 0 END) > 0
   AND SUM(CASE WHEN category = 'Electronics' THEN 1 ELSE 0 END) > 0;

-- ===================================================
-- 🔹 Advanced Analysis (Q31–Q35)
-- ===================================================

-- Q31. Rank customers based on total spending (use aggregation logic only).
SELECT customer_id, SUM(amount) AS total_spent
FROM purchases
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Q32. Find the customer who spent the most on a single purchase.
SELECT customer_id, MAX(amount) AS max_single_spend
FROM purchases
GROUP BY customer_id
ORDER BY max_single_spend DESC
LIMIT 1;

-- Q33. Find categories where at least 3 items were sold.
SELECT category, COUNT(*) AS total_items
FROM purchases
GROUP BY category
HAVING COUNT(*) >= 3;

-- Q34. Identify customers who spent nothing on Electronics.
SELECT customer_id
FROM customers
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id
  FROM purchases
  WHERE category = 'Electronics'
);

-- Q35. Find customers who made purchases only in one category.
SELECT customer_id
FROM purchases
GROUP BY customer_id
HAVING COUNT(DISTINCT category) = 1;

-- ✅ End of Day 8 (Q1–Q35)
-- Let me know if you'd like a markdown summary or explanation sheet.

# 🛒 Day 25: `E-Commerce Database` — Designing & Querying a Retail System

Welcome to **Day 25** of my daily SQL learning journey!  
Today’s focus was on exploring an **E-Commerce Database** — a practical and highly relevant domain in the real world of online shopping platforms and retail systems.

From managing products and customers to processing orders and tracking payments, this session helped me understand how a well-designed schema powers everything from simple product lookups to complex business analytics.

---

## 🧠 Main Topics Covered

- 🏗️ Designing a realistic e-commerce schema with products, categories, customers, orders, and payments
- 🧾 Understanding relationships: one-to-many and many-to-many (using junction tables)
- 📦 Writing queries to retrieve detailed product and order information
- 💳 Generating reports on customer purchases, order totals, and payment status
- 🔍 Practicing subqueries, aggregations, and joins across multiple related tables

---

## 📖 What I Learned

### 🔹 E-Commerce Schema Design

A typical online store includes several core tables:

- `products` – item catalog with details like name, price, stock, and category
- `categories` – groups for products (e.g., Electronics, Apparel)
- `customers` – user profiles with contact info
- `orders` – each customer’s purchase activity
- `order_items` – a junction table that links products to orders (quantity, price at order time)
- `payments` – tracking payment mode, date, and success

By creating foreign key relationships, the database becomes normalized and ensures data consistency.

---

### 🔹 Sample E-Commerce Querying Techniques

I practiced essential queries like:

- Joining `orders`, `customers`, and `order_items` to view full purchase history
- Calculating total order value with `SUM(quantity * price)`
- Finding the best-selling product by total quantity
- Grouping orders by customer to calculate total spend
- Filtering unpaid orders or those placed within a specific date range

---

## ❓ Example Practice Questions

Here are the practical SQL problems I solved today:

1. 🛍️ List all customers along with the total number of orders they have placed.
2. 📈 Retrieve the top 5 products based on total sales quantity.
3. 💰 Get a list of all orders with customer name, order date, total amount, and payment status.

These queries reflect common business intelligence use cases such as dashboards, customer analytics, and sales tracking.

---

## 📂 Files Included

- `data.sql` – Contains:
  - E-Commerce schema design
  - Sample data for products, customers, orders, and payments
  - Practice questions embedded in SQL comments

- `queries.sql` – Contains:
  - Clean and optimized solutions
  - Joins across multiple tables
  - Use of subqueries, aggregation, and conditional filtering
  - Commentary and suggestions for improvement

---

## 📝 Summary

Today’s session helped me explore how relational databases support the inner workings of modern e-commerce systems — from product listings to customer orders and payments.  
Understanding this domain helps in building apps, dashboards, and analytics tools for retail businesses.

💼 Real-world applications include:

- Inventory management systems
- Sales tracking and revenue reports
- Customer loyalty programs
- Payment reconciliation tools

---

📅 Up next: **Day 26: HR & Payroll System** — exploring how to model employees, departments, salaries, and benefits in an enterprise setting.

Stay tuned for deeper dives into database design and advanced querying for HR operations and compensation management.  

Happy querying! 💻📊



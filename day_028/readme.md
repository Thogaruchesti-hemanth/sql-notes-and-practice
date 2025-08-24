# 🚀 Day 28: Final Capstone Project — Real-World SQL Integration

Welcome to **Day 28** of my daily SQL learning journey!  
Today marks a major milestone — I completed a **Final Capstone Project** that consolidated all the key SQL concepts I’ve learned so far into a practical, real-world application.

This project simulates a **mini relational database system** for a business environment involving customers, orders, products, employees, and departments. It challenges the ability to write optimized, accurate, and insightful queries that reflect actual use cases such as reporting, analysis, and data validation.

---

## 🧠 Main Topics Covered

- 🏗 Designing a multi-table relational schema
- 🧾 Writing complex SQL queries across multiple joined tables
- 📊 Using aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`)
- 🎯 Filtering with `WHERE`, `HAVING`, `GROUP BY`, and `ORDER BY`
- 🔄 Working with subqueries and derived tables
- 🔍 Real-world scenarios like revenue reports, performance metrics, and audits
- 🔒 Validating data integrity with foreign key constraints

---

## 📖 What I Learned

### 🧩 Building a Cohesive Schema

I created a well-structured schema including the following entities:

- **Customers**
- **Orders**
- **Products**
- **Employees**
- **Departments**
- **Suppliers**

Each table was designed with relevant foreign key constraints to ensure **referential integrity**, simulating a normalized production-grade database.

### 🛠 Querying for Business Insights

I wrote and optimized various **multi-join** and **aggregate** queries to answer real-world business questions, including:

- Revenue generated per product category
- Top-performing employees based on total orders handled
- Inventory status with supplier details
- Customer order frequency and purchase trends

### 📌 Realistic Scenarios Covered

The capstone included questions resembling actual analytics tasks like:

- Weekly revenue breakdown
- Customer retention statistics
- Department-wise employee distribution and salaries
- Detecting products never ordered
- Identifying outlier orders (high value, unusual frequency)

---

## ❓ Example Practice Questions

Here are some of the challenging, real-world-style questions I tackled:

1. 📈 Which products generated the highest revenue last month?
2. 🧑‍💼 Which employee handled the most customer orders in Q1?
3. 🛒 List customers who made more than 3 purchases and spent over $500 in total.

These queries simulate dashboard KPIs, business audit reports, and marketing insights.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Full schema for all entities with proper keys
  * Sample data entries representing realistic transactions and relationships
  * Practice questions embedded as SQL comments

* `queries.sql` – Contains:

  * Well-documented solutions for each capstone challenge
  * Inline explanations and justifications
  * Alternative approaches for performance and clarity

---

## 📝 Summary

Completing the **Final Capstone Project** gave me the opportunity to:

✅ Apply all previously learned SQL techniques in context  
✅ Think critically about data relationships and query efficiency  
✅ Build a foundation for transitioning from learner to **real-world SQL practitioner**  

This project reinforced the importance of clean schema design, join logic, and aggregate queries — all essential for back-end development, data analysis, and reporting.

---

📅 Up next: **Day 29: Optimize Queries, Add Indexes** — I’ll explore performance tuning with indexes, learn how to write faster queries, and understand the trade-offs involved in optimizing read-heavy databases.

Stay tuned for the next step in this SQL mastery journey! ⚡

Happy querying! 💻📊

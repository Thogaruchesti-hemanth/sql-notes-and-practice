# 🧱 Day 18: `VIEWS` — Creating Virtual Tables in SQL

Welcome to **Day 18** of my daily SQL learning journey!  
Today’s focus was on **`VIEWS`**, a powerful feature in SQL that allows us to create **virtual tables** based on queries. Views help simplify complex logic, improve security, and promote reusable query structures.

They don't store actual data but act as saved queries that you can treat like regular tables.

---

## 🧠 Main Topics Covered

- 👁 What is a View and why we use it
- 🧰 Creating, altering, and dropping views
- 🔄 How views simplify complex joins and aggregations
- 🔐 Securing sensitive data using views
- 🚫 Limitations and considerations with updatable views
- 🏷 Using views for business logic abstraction

---

## 📖 What I Learned

### 🔹 Understanding `VIEWS`: Virtual Tables from Queries

A **view** is a named SQL query that appears as a table to the user. It's useful when you:

- Repeatedly write the same complex query
- Want to expose only a portion of the data
- Need to simplify access for non-technical users
- Separate business logic from the underlying schema

**Syntax to Create a View:**

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
````

#### 🧪 Example:

```sql
CREATE VIEW active_customers AS
SELECT id, name, email
FROM customers
WHERE is_active = 1;
```

Now you can simply run:

```sql
SELECT * FROM active_customers;
```

💡 This makes working with frequently queried datasets much cleaner and more intuitive.

---

### 🛠 Managing Views

* **Updating a View (Re-Create):**

```sql
CREATE OR REPLACE VIEW view_name AS
SELECT ...
```

* **Removing a View:**

```sql
DROP VIEW view_name;
```

---

### 🔐 Use Cases and Security Benefits

* **Security:** Hide sensitive columns (e.g., salary, passwords)
* **Convenience:** Reduce query complexity for end users
* **Consistency:** Centralize business rules like "active users" or "pending orders"
* **Abstraction:** Present derived data without altering the original schema

---

### ⚠ Limitations of Views

* Some views are **not updatable** if they contain:

  * Joins
  * Aggregates
  * GROUP BY / HAVING
  * DISTINCT or UNION
* Performance may degrade if overused on top of heavy queries
* Indexes cannot be created directly on views (but indexed materialized views are possible in some DBs)

---

## ❓ Example Practice Questions

Here are some useful practice tasks I explored today:

1. 👁 Create a view that shows only customers who have placed more than 5 orders.
2. 💸 Build a view to display employee names and their total sales.
3. 📦 Construct a view that simplifies a 3-table join between orders, products, and suppliers.

These tasks helped me experience how views can abstract logic while retaining query power.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schemas (e.g., customers, orders, employees, products)
  * Sample data
  * View creation practice questions in comments

* `queries.sql` – Contains:

  * View creation scripts
  * Practical use examples
  * Explanation on when and why to use each view
  * Notes on view limitations and best practices

---

## 📝 Summary

Today's deep dive into **SQL Views** gave me valuable insight into simplifying queries, securing data, and separating business logic from storage. Views are particularly useful in real-world applications such as:

* 📊 Dashboards showing filtered or aggregated data
* 💼 Role-based access to information (e.g., managers vs. employees)
* 🔄 Reusability of logic across different systems

Views help make SQL more modular, readable, and secure — and they’ll be a major asset as I build more complex data models.

---

📅 Up next: **Day 19: Indexes (Intro)** — I’ll be learning how to optimize database performance using indexes, understand how they work under the hood, and explore different indexing strategies.

Let’s keep learning! 🚀🧠

Happy querying! 💻📘

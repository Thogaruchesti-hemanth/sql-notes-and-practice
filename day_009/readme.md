
# 🔗 Day 9: `INNER JOIN` — Combining Tables with Shared Keys

Welcome to **Day 9** of my daily SQL learning journey!  
Today’s focus was on **`INNER JOIN`**, one of the most fundamental SQL operations for combining rows from multiple tables based on a related column between them.

Understanding `INNER JOIN` is crucial for working with normalized databases where data is split across multiple tables for efficiency and consistency.

---

## 🧠 Main Topics Covered

- 🔗 Understanding relational databases and foreign keys
- 🧩 Basics of `INNER JOIN` syntax and logic
- 📊 Combining rows from two or more tables with matching values
- 🧾 Filtering results in joined queries
- 🛠 Using aliases for readability and efficiency
- 🕵️‍♂️ Handling NULLs and non-matching records (implicitly ignored in INNER JOIN)

---

## 📖 What I Learned

### 🔹 `INNER JOIN`: Merging Tables on a Common Column

The `INNER JOIN` returns only the rows where there is a **match in both joined tables** based on the specified condition.

**Basic Syntax:**

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
````

**Example:**

```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id;
```

🔍 This retrieves only the employees **who are assigned to a department**, filtering out unmatched records from either table.

#### 🧠 Key Points:

* `INNER JOIN` can be used with multiple tables.
* You can join using multiple conditions with `AND`/`OR`.
* Table aliases improve readability:

  ```sql
  SELECT e.name, d.department_name
  FROM employees e
  JOIN departments d
  ON e.department_id = d.id;
  ```
* Joins do **not** return unmatched rows — that's the job of `LEFT` or `FULL` joins.

---

## ❓ Example Practice Questions

Here are some real-world-style questions I practiced today:

1. 👥 Retrieve all employees along with their department names.
2. 🛒 List all orders with the corresponding customer’s name and email.
3. 📦 Get product names and their supplier names from the products and suppliers tables.

These queries simulate situations like reporting dashboards, user-specific views, and relational lookups.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Schema definitions for related tables (e.g., employees, departments, orders, customers)
  * Sample data insertion
  * Practice questions in SQL comment format

* `queries.sql` – Contains:

  * Solutions to today's INNER JOIN practice problems
  * Clear explanations for each join condition and choice
  * Suggestions and alternate query approaches using aliases and filtered joins

---

## 📝 Summary

Today’s focus on `INNER JOIN` deepened my understanding of how to **connect data across tables**, a fundamental skill in SQL. Whether building dashboards, retrieving customer order histories, or generating combined reports, joins are indispensable.

Typical real-world applications include:

* CRM systems displaying user + activity data
* E-commerce dashboards showing order + product + customer info
* Finance reports aggregating transactions with categories
* HR systems tracking employees and their departments

---

📅 Up next: **Day 10: LEFT JOIN, RIGHT JOIN** — exploring how to include unmatched rows and better understand outer join strategies!

Stay tuned as I dive deeper into more powerful SQL join types that help preserve data from one or both tables — even when there's no match.

Happy querying! 💻🔍


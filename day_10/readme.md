# 🔄 Day 10: `LEFT JOIN`, `RIGHT JOIN` — Expanding Our View with Outer Joins

Welcome to **Day 10** of my daily SQL learning journey!  
Today’s focus was on **`LEFT JOIN`** and **`RIGHT JOIN`** — powerful SQL tools used to retrieve **both matched and unmatched records** between related tables.

Understanding outer joins helps build **complete datasets**, even when some relationships are missing — essential for real-world applications like reporting, auditing, and troubleshooting.

---

## 🧠 Main Topics Covered

- 🌐 Difference between `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`
- 📥 `LEFT JOIN`: Returning **all rows from the left** table and matched ones from the right
- 📤 `RIGHT JOIN`: Returning **all rows from the right** table and matched ones from the left
- ❓ Handling `NULL` values in outer joins
- 🔍 Identifying unmatched data using `IS NULL` conditions
- 🛠 Practical use-cases where outer joins reveal missing or incomplete data

---

## 📖 What I Learned

### 🔹 `LEFT JOIN`: Keep All Records From the Left Table

Returns **all rows from the left table**, even if there’s **no matching row in the right table**. If no match, columns from the right table return `NULL`.

```sql
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.id;
````

🔍 Use case: Get **all employees**, even if they haven’t been assigned to a department.

---

### 🔹 `RIGHT JOIN`: Keep All Records From the Right Table

Returns **all rows from the right table**, even if there’s **no match in the left table**.

```sql
SELECT orders.id, customers.name
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.id;
```

🔍 Use case: List **all customers**, even if they haven’t placed any orders.

---

### ✅ When to Use LEFT or RIGHT JOIN

| Use Case                           | JOIN Type    |
| ---------------------------------- | ------------ |
| You want *all left table records*  | `LEFT JOIN`  |
| You want *all right table records* | `RIGHT JOIN` |
| You want *only matched records*    | `INNER JOIN` |

---

## ❓ Example Practice Questions

Today’s questions helped solidify the use of outer joins in real scenarios:

1. 🧑‍💼 List **all employees**, including those without a department.
2. 📬 Show **all customers**, even if they haven’t placed any orders.
3. 🛍 Get **all products**, including those that haven’t been sold yet.

These helped me think critically about data completeness and null handling.

---

## 📂 Files Included

* `data.sql` – Includes:

  * Table schema definitions for employees, departments, customers, orders, products
  * Sample data population for hands-on practice
  * Practice questions in SQL comments

* `queries.sql` – Includes:

  * Detailed solutions to today's outer join challenges
  * Commentary on expected vs. actual outputs
  * Alternative strategies using `IS NULL` and coalesce functions

---

## 📝 Summary

Today’s exploration into `LEFT JOIN` and `RIGHT JOIN` opened the door to **more inclusive data retrieval** strategies.

Key takeaways:

* Use outer joins to **retain unmatched records**.
* Understand where `NULL` values appear and what they represent.
* Ideal for identifying **incomplete relationships** in your data.

🧠 These joins are especially valuable when:

* Auditing missing associations
* Building reports that include "zero activity" users/items
* Creating comprehensive datasets for analysis

---

---

📅 Up next: **Day 11: FULL OUTER JOIN** — we’ll explore how to retrieve all rows from both tables, regardless of whether a match exists. It’s the most inclusive join type and especially useful for **comprehensive comparisons** and **gap analysis**.

Until then, keep exploring and querying! 💡🔍


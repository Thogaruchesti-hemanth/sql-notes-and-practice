# 🔁 Day 12: `SELF JOIN` — Relating Rows Within the Same Table

Welcome to **Day 12** of my daily SQL learning journey!  
Today’s focus was on the powerful concept of the **`SELF JOIN`**, which allows us to compare rows within the same table — a key pattern for hierarchical data, relationship comparisons, and recursive logic.

---

## 🧠 Main Topics Covered

- 🔁 What is a `SELF JOIN` and why it's useful
- 🧩 Using table aliases to differentiate same-table references
- 👨‍👧 Handling hierarchical and relationship-based data
- 📊 Querying parent-child, manager-employee, or related-item structures
- 🔎 Real-world use cases for same-table comparisons

---

## 📖 What I Learned

### 🔹 `SELF JOIN`: Comparing Rows in the Same Table

A `SELF JOIN` joins a table **to itself** as if it were two different tables. This is helpful when a table has a **relationship to itself**, such as an employee who reports to another employee.

**Basic Syntax:**

```sql
SELECT A.column1, B.column2
FROM table_name A
JOIN table_name B
ON A.common_column = B.common_column;
````

**Example:**

```sql
SELECT e1.name AS employee, e2.name AS manager
FROM employees e1
JOIN employees e2
ON e1.manager_id = e2.id;
```

🔍 This query retrieves each employee along with their manager's name, using aliases (`e1`, `e2`) to differentiate between the two instances of the `employees` table.

#### 🧠 Key Points:

* Aliases (`A`, `B`, `e1`, `e2`, etc.) are **required** to reference the same table multiple times.
* `SELF JOIN` is essential for modeling **hierarchies** or **comparisons**.
* Filtering conditions help avoid redundant or circular results (e.g., avoid joining a row to itself unless intended).

---

## ❓ Example Practice Questions

Here are some interesting and practical questions I explored today:

1. 👨‍👦 Get a list of employees along with their manager's name.
2. 🧑‍🤝‍🧑 Find pairs of employees who belong to the same department.
3. 🕵️ Identify duplicate email addresses within a users table.

These challenges mimic real-world problems such as organization charts, team structures, and data validation checks.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Schema for tables like `employees` with self-referential fields (e.g., `manager_id`)
  * Sample data inserts for hierarchy-based structures
  * Practice questions in SQL comments

* `queries.sql` – Contains:

  * Query solutions to each of today’s `SELF JOIN` exercises
  * Inline explanations and comments
  * Alternate techniques using filters and thoughtful aliasing

---

## 📝 Summary

Today’s exploration of `SELF JOIN` has unlocked a new layer of SQL — the ability to analyze **relationships within the same dataset**. From employee-manager hierarchies to comparing items in a catalog, this join pattern is crucial in many scenarios.

Common real-world applications include:

* 🏢 HR systems displaying reporting chains (employee → manager)
* 🛒 E-commerce platforms comparing products or user behaviors
* 🔐 Detecting data inconsistencies like duplicate entries

---

📅 Up next: **Day 13: UNION, INTERSECT, EXCEPT** — exploring how to combine, compare, and differentiate result sets across queries.

These powerful set operations allow us to merge rows from different queries, find overlapping results, or exclude certain matches — great for reporting, filtering, and advanced comparisons.

Happy querying! 🔍🧠


# 📘 Day 2: Mastering the `WHERE` Clause in SQL

Welcome to **Day 2** of my SQL learning journey!
Today, I focused on one of the **most powerful features of SQL**—the `WHERE` clause. This clause is the **filtering engine** of SQL: it decides *which rows* from a table are retrieved and which are excluded, making it essential for any real-world data analysis or application development.

---

## 🎯 Objective of Day 2

* Learn how to **filter rows** in SQL queries.
* Understand how to use **comparison and logical operators**.
* Explore how multiple conditions can be combined with **AND / OR / NOT**.
* Write **precise and optimized conditions** for real-world datasets.

By the end of this session, I was able to transform **raw tables** into **meaningful datasets** by filtering out irrelevant information.

---

## 📚 Topics Covered

1. **`WHERE` Clause** – The backbone of filtering rows.
2. **Comparison Operators** – `=`, `!=`, `<`, `>`, `<=`, `>=`.
3. **Logical Operators** – `AND`, `OR`, `NOT`.
4. **Parentheses `()`** – Managing operator precedence.
5. **Best Practices** – Writing readable, maintainable, and efficient filters.

---

## 🧩 Why the `WHERE` Clause Matters

Think of a database as a **library**:

* A `SELECT *` query gives you **all the books** (all rows).
* A `WHERE` clause is like telling the librarian:

  * *“I only want books written by ‘Author X’ that were published after 2015.”*

Without the `WHERE` clause, you’d drown in irrelevant results. With it, you become laser-focused.

---

## 🧠 Core Concepts Explained

### 1. The `WHERE` Clause

```sql
SELECT * FROM employees
WHERE department = 'IT';
```

👉 This returns **only employees in the IT department**.

---

### 2. Comparison Operators

| Operator    | Meaning          | Example            | Result                              |
| ----------- | ---------------- | ------------------ | ----------------------------------- |
| `=`         | Equal to         | `salary = 50000`   | Rows where salary is exactly 50,000 |
| `!=` / `<>` | Not equal to     | `city != 'London'` | Rows excluding London               |
| `>`         | Greater than     | `salary > 50000`   | Salaries above 50,000               |
| `<`         | Less than        | `age < 30`         | Ages below 30                       |
| `>=`        | Greater or equal | `experience >= 5`  | Experience of 5+ years              |
| `<=`        | Less or equal    | `rating <= 4`      | Ratings up to 4                     |

---

### 3. Logical Operators

* **AND** – Both conditions must be true.

```sql
WHERE salary > 50000 AND department = 'IT';
```

* **OR** – At least one condition must be true.

```sql
WHERE city = 'New York' OR city = 'Chicago';
```

* **NOT** – Excludes results.

```sql
WHERE NOT status = 'Cancelled';
```

---

### 4. Parentheses for Precedence

SQL evaluates `AND` before `OR`. Parentheses help **control the order**.

```sql
WHERE (salary > 50000 AND department = 'IT')
   OR city = 'Boston';
```

Without parentheses, results may differ and cause **logical errors**.

---

## 🏗️ Practice Problems Solved

1. **Find IT employees** earning more than 50,000:

```sql
SELECT * FROM employees
WHERE salary > 50000 AND department = 'IT';
```

2. **List customers not from New York or Chicago:**

```sql
SELECT * FROM customers
WHERE city NOT IN ('New York', 'Chicago');
```

3. **Get orders between 100–500 but not cancelled:**

```sql
SELECT * FROM orders
WHERE total BETWEEN 100 AND 500
  AND status != 'Cancelled';
```

---

## 📂 Repository Structure

* **`data.sql`** –

  * Table schemas (employees, customers, orders).
  * Sample data with `INSERT` statements.
  * Practice questions as **SQL comments** above the data.

* **`queries.sql`** –

  * Solutions to all practice questions.
  * Each query includes:

    * 📝 Explanation of the logic.
    * ✅ Performance tips (e.g., use `IN` instead of multiple `OR`s).
    * 👀 Notes on parentheses and operator precedence.

---

## 🚀 Quick Reference Guide

| Feature             | Syntax                                      | Example                                                 |
| ------------------- | ------------------------------------------- | ------------------------------------------------------- |
| Filter with `WHERE` | `WHERE column = value`                      | `WHERE department = 'IT'`                               |
| Combine with `AND`  | `condition1 AND condition2`                 | `WHERE salary > 50000 AND department = 'IT'`            |
| Combine with `OR`   | `condition1 OR condition2`                  | `WHERE city = 'London' OR city = 'Paris'`               |
| Exclude with `NOT`  | `WHERE NOT condition`                       | `WHERE NOT status = 'Cancelled'`                        |
| Parentheses         | `(condition1 AND condition2) OR condition3` | `WHERE (salary > 50000 AND dept='IT') OR city='Boston'` |

---

## 🧭 Best Practices

* ✅ **Always use parentheses** when mixing `AND` + `OR`.
* ✅ Write **high-selectivity conditions first** (improves performance).
* ✅ Use **clear aliases** to avoid ambiguity.
* ✅ Be careful with `!=` or `NOT IN` when `NULL` values exist.
* ✅ Use **`IN`, `BETWEEN`, `LIKE`** for cleaner syntax.

---

## 🙌 Key Takeaways

* The `WHERE` clause is the **gatekeeper** of your data.
* Logical operators (`AND`, `OR`, `NOT`) let you combine filters flexibly.
* Parentheses ensure your logic is **executed as intended**.
* Writing **clean, readable conditions** is just as important as getting correct results.

This foundation will make upcoming topics like **pattern matching (`LIKE`)**, **joins**, and **aggregations** much easier.

---

📁 Navigate the repository: [Day\_2/](./)

Stay tuned for **Day 3 → Pattern Matching & Wildcards (`LIKE`, `%`, `_`)** ✨

🚀 *Happy Querying!*

---

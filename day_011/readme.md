# 🔗 Day 11: Simulating `FULL OUTER JOIN` in MySQL — Merging All Matched and Unmatched Data

Welcome to **Day 11** of my SQL learning journey!
Today’s focus is on understanding and implementing the **`FULL OUTER JOIN`** concept **in MySQL**, which **does not** natively support this join type.

Instead, we’ll learn how to **simulate** it by combining a **`LEFT JOIN`** and a **`RIGHT JOIN`** using **`UNION`** or **`UNION ALL`**.

---

## 🧠 Main Topics Covered

* 🧩 Concept of `FULL OUTER JOIN`
* 🔄 Why MySQL doesn’t support it directly
* 🛠 Simulating `FULL OUTER JOIN` using:

  * `LEFT JOIN`
  * `RIGHT JOIN`
  * `UNION`
  * `UNION ALL`
* ❌ Handling `NULL` values for unmatched records
* 🧾 Common use cases in reporting and data analysis

---

## 📖 Understanding the Concept

### 🔹 What is a `FULL OUTER JOIN`?

In SQL theory, a **`FULL OUTER JOIN`** returns **all rows** from both tables:

* Matched rows are combined into one.
* Unmatched rows from **both** tables still appear, with `NULL`s for the missing side.

Example in SQL (if supported):

```sql
SELECT *
FROM table1
FULL OUTER JOIN table2
ON table1.id = table2.id;
```

---

### 🔹 The MySQL Limitation

MySQL supports:

* `INNER JOIN`
* `LEFT JOIN` (LEFT OUTER JOIN)
* `RIGHT JOIN` (RIGHT OUTER JOIN)

But it **does not** support `FULL OUTER JOIN` directly.
We must **simulate it**.

---

## 🛠 Simulating `FULL OUTER JOIN` in MySQL

We can combine:

* **`LEFT JOIN`** → all rows from **table1** + matching from **table2**
* **`RIGHT JOIN`** → all rows from **table2** + matching from **table1**

Then use **`UNION`** or **`UNION ALL`** to merge results.

---

### **General Syntax (with UNION)**

```sql
SELECT columns
FROM table1
LEFT JOIN table2 ON table1.id = table2.id
UNION
SELECT columns
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;
```

---

### **Example: Employees & Departments (UNION)**

```sql
SELECT e.emp_id, e.name AS employee_name, d.dept_id, d.dept_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.dept_id
UNION
SELECT e.emp_id, e.name AS employee_name, d.dept_id, d.dept_name
FROM employees e
RIGHT JOIN departments d
    ON e.department_id = d.dept_id;
```

---

## 🔍 **`UNION` vs `UNION ALL`**

* **`UNION`**

  * Removes duplicate rows.
  * Slower for large datasets because it performs sorting to eliminate duplicates.
  * Ideal when you want a **clean, unique** list.

* **`UNION ALL`**

  * Keeps **all rows**, including duplicates.
  * Faster because it skips the sorting step.
  * Useful when:

    * You want **raw** data without deduplication.
    * You need to see if the same match appeared in both LEFT and RIGHT join results.

---

### **Example: Employees & Departments (UNION ALL)**

```sql
SELECT e.emp_id, e.name AS employee_name, d.dept_id, d.dept_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.dept_id
UNION ALL
SELECT e.emp_id, e.name AS employee_name, d.dept_id, d.dept_name
FROM employees e
RIGHT JOIN departments d
    ON e.department_id = d.dept_id;
```

💡 **Note:** When using `UNION ALL`, you may need additional filtering to remove exact duplicate matches if they’re not wanted.

---

## 🔍 Handling `NULL`s

When there’s **no match**:

* `employee_name` will be `NULL` if the department has no employees.
* `dept_name` will be `NULL` if the employee has no department.

💡 Use `COALESCE()` to replace `NULL` values with something meaningful:

```sql
SELECT 
    COALESCE(e.name, 'No Employee') AS employee_name,
    COALESCE(d.dept_name, 'No Department') AS department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.dept_id
UNION
SELECT 
    COALESCE(e.name, 'No Employee'),
    COALESCE(d.dept_name, 'No Department')
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.dept_id;
```

---

## 📊 Common Use Cases

`FULL OUTER JOIN` (or its simulation in MySQL) is especially useful when:

* **Data reconciliation** — finding mismatched records between two datasets.
* **Comprehensive reporting** — including all categories even if they have no data.
* **Auditing** — checking for orphan records.
* **Merging disparate data sources** — combining records from different systems.

---

## 🧾 Example Practice Questions

Here are a few challenges I practiced:

1. 🔍 **All Employees & Departments** — including those without assignments.
2. 🧾 **All Customers & Orders** — showing even customers with no orders and orders with missing customers.
3. 🧑‍🏫 **All Students & Courses** — even if students haven’t enrolled or courses have no students.

---

## 📝 Summary

* **`FULL OUTER JOIN`** keeps **all rows** from both tables, matched and unmatched.
* MySQL **does not** support it directly.
* Simulate it using:

  * `LEFT JOIN`
  * `RIGHT JOIN`
  * `UNION` (remove duplicates)
  * `UNION ALL` (keep all rows, faster)
* Handle `NULL`s with `COALESCE()` for cleaner results.
* Perfect for **data completeness** and **mismatch detection**.

---

📅 **Up next**: **Day 12 — SELF JOIN**
We’ll explore joining a table to itself.

Happy querying!.

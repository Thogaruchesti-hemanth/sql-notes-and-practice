# 🧠 Day 15: `Subqueries` — SQL Queries Inside SQL

Welcome to **Day 15** of my daily SQL learning journey!  
Today I explored one of SQL’s most powerful and flexible features — **Subqueries**. A subquery allows you to **nest a query inside another SQL query**, making it easier to break down complex logic into clean and readable parts.

Subqueries are especially useful when you need to filter, compare, or transform data using dynamic values derived from other queries.

---

## 📚 Main Topics Covered

- 🔍 What is a subquery and why it's useful
- 🧱 Types of subqueries:
  - Scalar subquery (returns a single value)
  - Column subquery (returns one column)
  - Table subquery (returns an entire result set)
- 🧾 Subquery placement:
  - Inside `WHERE`, `SELECT`, `FROM`, `HAVING` clauses
- ⚠️ Rules and limitations:
  - Subquery must be enclosed in parentheses
  - Only scalar subqueries can be used in the `SELECT` clause
- 💡 Use cases for filtering, transforming, and comparing data

---

## 📖 What I Learned

### 🔹 Subqueries: The SQL Building Block Within Queries

Subqueries are enclosed in parentheses and return results that are passed into the main (outer) query.

They can be used in several clauses:

---

### 🔸 Subquery in `WHERE` Clause

```sql
SELECT name
FROM employees
WHERE department_id = (
    SELECT id
    FROM departments
    WHERE department_name = 'Finance'
);
````

🎯 This returns the names of employees who belong to the **Finance** department by dynamically fetching the department ID.

---

### 🔸 Subquery in `SELECT` Clause

```sql
SELECT name,
       (SELECT COUNT(*) FROM tasks WHERE tasks.employee_id = e.id) AS task_count
FROM employees e;
```

🎯 Adds a new column that counts how many tasks each employee has — using a **scalar subquery**.

---

### 🔸 Subquery in `FROM` Clause

```sql
SELECT department_name, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg
JOIN departments ON departments.id = dept_avg.department_id;
```

🎯 Treats the subquery as a **derived table** for further processing and joining.

---

### 🔸 Subquery in `HAVING` Clause

```sql
SELECT department_id, COUNT(*) AS emp_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > (
    SELECT AVG(emp_count)
    FROM (
        SELECT department_id, COUNT(*) AS emp_count
        FROM employees
        GROUP BY department_id
    ) AS dept_counts
);
```

🎯 Returns departments that have **more employees than the average** department.

---

## ❓ Example Practice Questions

1. 🧑‍💼 List employees who earn more than the **average salary** across all employees.
2. 🏷️ Show products with prices higher than the **maximum price** in the "Books" category.
3. 🏢 Display departments that have **at least one** employee.

These questions help reinforce subquery usage in realistic data scenarios, like dynamic comparisons and hierarchical data lookups.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table structures like `employees`, `departments`, `products`, `categories`
  * Sample data insertions
  * Practice questions (as comments)

* `queries.sql` – Contains:

  * Clean subquery-based solutions
  * Highlights of each use case (WHERE, SELECT, FROM, HAVING)
  * Notes on which type of subquery is used (scalar, column, or table)

---

## 📝 Summary

Subqueries unlock the ability to **solve problems in steps**, improving readability and flexibility. They’re often used when a result from one query is needed to drive another — such as filtering by a calculated value, comparing records, or aggregating related data.

Key real-world applications include:

* Fetching latest transactions per user
* Filtering items above average ratings or prices
* Embedding small calculated values in select lists
* Building temporary derived tables for reporting

---

📅 Up next: **Day 16: Correlated Subqueries** — where I’ll explore how subqueries can reference outer query rows dynamically, unlocking even more granular filtering and calculations.

Thanks for following along — let’s keep querying smarter! 🧑‍💻📊

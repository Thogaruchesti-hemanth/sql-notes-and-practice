# 🔄 Day 16: `Correlated Subqueries` — Row-by-Row Querying in SQL

Welcome to **Day 16** of my daily SQL learning journey!  
Today’s focus was on **Correlated Subqueries**, a powerful concept in SQL that allows queries to reference columns from the outer query — enabling row-by-row comparisons and dynamic filtering.

Correlated subqueries are **executed for each row of the outer query**, making them especially useful for filtering, ranking, and conditional logic that depends on related values.

---

## 🧠 Main Topics Covered

- 🧩 Understanding the difference between **correlated** vs **non-correlated subqueries**
- 🔄 How correlated subqueries work row-by-row
- 🎯 Using them in `WHERE`, `SELECT`, and `FROM` clauses
- 📊 Real-world use cases: filtering by max/min per group, conditional comparisons
- 🚫 Performance considerations and alternatives (like `JOIN` + `GROUP BY` or `WINDOW FUNCTIONS`)

---

## 📖 What I Learned

### 🔹 What is a Correlated Subquery?

A **correlated subquery** is a subquery that **depends on the outer query** for its values. It cannot be executed independently.

**Syntax Example:**

```sql
SELECT e.name, e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
````

🧠 This query returns employees **who earn more than the average salary of their department**.

### 🔎 Key Differences from Regular Subqueries:

| Feature                   | Regular Subquery | Correlated Subquery      |
| ------------------------- | ---------------- | ------------------------ |
| Executes independently    | ✅                | ❌ Depends on outer query |
| Evaluated once            | ✅                | ❌ Evaluated per row      |
| References outer columns  | ❌                | ✅                        |
| Faster for large datasets | ✅ (usually)      | ❌ (can be slower)        |

---

## ❓ Example Practice Questions

Here are some practice challenges I tackled today:

1. 🏆 List all employees who earn more than the average salary in their department.
2. 📚 Retrieve books that have more pages than the average pages of books in the same genre.
3. 🛒 Get customers who placed orders greater than their own average order amount.

These questions helped me understand how correlated subqueries can simulate **per-group filtering**, a common use-case in analytics.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schema (e.g., `employees`, `departments`, `books`, `orders`, `customers`)
  * Sample data to simulate real-world scenarios
  * Practice questions in SQL comment format

* `queries.sql` – Contains:

  * Solutions to all correlated subquery problems
  * Explanations for subquery logic and outer query dependency
  * Notes on optimization tips and better alternatives using joins or CTEs

---

## 📝 Summary

Today's exploration into **correlated subqueries** gave me a deeper appreciation for how SQL can be used for **context-aware, row-level querying**.

While powerful, these queries can be performance-intensive and are best used when:

* Row-by-row filtering is essential
* The logic **cannot** be replicated with a simple `JOIN` or `GROUP BY`
* Precision matters more than speed

---

📅 Up next: **Day 17:  CASE, IF, COALESCE** — exploring conditional logic in SQL for dynamic output, null handling, and more readable query expressions.

Thanks for following along, and happy querying! 🧠💡



# 🪟 Day 32: `Window Functions` — Advanced Row-wise Calculations in SQL

Welcome to **Day 32** of my daily SQL learning journey!  
Today’s focus was on one of the most **powerful and advanced features** in SQL: **`Window Functions`**. These functions allow us to perform calculations **across sets of rows related to the current row**, without collapsing results like `GROUP BY` does.

Mastering window functions opens doors to solving complex analytical problems in a much cleaner and efficient way.

---

## 🧠 Main Topics Covered

- 🪟 Introduction to `OVER()` clause and how windowing works
- 🔢 `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()` for ranking
- 📊 `SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()` as window aggregates
- 🔁 `PARTITION BY` — segmenting data within windows
- 🔃 `ORDER BY` inside window frames to control row order
- 🪜 Difference between `RANK()` vs `DENSE_RANK()` vs `ROW_NUMBER()`
- 🔄 Use cases where `GROUP BY` fails but `WINDOW FUNCTIONS` succeed

---

## 📖 What I Learned

### 🪟 What are Window Functions?

Window Functions allow you to perform **row-wise calculations** across a **"window" of rows** that are somehow related to the current row. Unlike `GROUP BY`, they **retain all rows** in the result.

**Syntax:**

```sql
SELECT column_name, 
       function_name(...) OVER (
         PARTITION BY column_to_group
         ORDER BY column_to_order
       ) AS alias
FROM table_name;
````

---

### 🔹 Common Window Functions:

#### 🆔 `ROW_NUMBER()`

Assigns a **unique row number** starting from 1 for each row within a partition.

```sql
SELECT name, department, 
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;
```

#### 🏆 `RANK()` and `DENSE_RANK()`

Ranks rows based on a specific order, but:

* `RANK()` leaves **gaps** after ties
* `DENSE_RANK()` does **not** leave gaps

```sql
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS rank,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employees;
```

#### 📊 `SUM()`, `AVG()` over partitions

These perform cumulative or group-level aggregations **without collapsing** the rows.

```sql
SELECT department, name, salary,
       SUM(salary) OVER (PARTITION BY department) AS dept_total_salary
FROM employees;
```

---

## 💡 Why Window Functions?

* Enable advanced reporting and analytics (rankings, running totals, group comparisons).
* Unlike `GROUP BY`, they **do not reduce row count**.
* Essential for:

  * Top-N queries per group
  * Calculating moving averages
  * Comparing each row to group statistics (e.g., above/below average)

---

## ❓ Example Practice Questions

Here are the practice questions I solved today using window functions:

1. 🏅 Find the top 3 highest-paid employees in each department.
2. 📈 Calculate a running total of sales for each product category.
3. 📊 Show each employee’s salary compared to the average salary in their department.

These questions reflect **real-world analytical use cases** in business intelligence and reporting systems.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Employee, department, sales, and category schema
  * Sample dataset
  * Practice questions as SQL comments

* `queries.sql` – Contains:

  * All solutions with proper window function usage
  * Inline explanations and alternatives
  * Notes on performance and readability improvements

---

## 📝 Summary

Today’s session on **Window Functions** introduced an incredibly powerful concept that enhances SQL’s ability to handle complex analytics without subqueries or groupings that limit row visibility.

These functions are indispensable when building:

* Leaderboards (ranking employees, students, etc.)
* Running totals and moving averages
* Comparative analysis (row vs group metrics)
* Real-time dashboards and analytical reports

---

✅ This marks the **end of the SQL learning series**!
Now, you can practice **SQL Interview Questions** to reinforce your understanding.

👉 Let me know if you'd like me to include a curated list of **SQL Interview Questions** — I'd be happy to add that as a final bonus!

Happy querying! 📊🧠🧮

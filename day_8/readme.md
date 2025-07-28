# 📘 Day 8: GROUP BY, HAVING

Welcome to Day 8 of my daily SQL learning journey! Today’s focus was on **aggregating data** using the `GROUP BY` clause and **filtering aggregated results** with the `HAVING` clause. These are foundational tools in SQL that allow us to group rows by specific columns and perform calculations like counts, sums, averages, and more — extremely useful in analytical and reporting tasks.

---

## 🧠 Main Topics Covered

- 📊 Aggregating data using `GROUP BY`
- 🔍 Filtering aggregated groups with `HAVING`
- 🧮 Using aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- 🧱 Grouping by single and multiple columns
- ⚠️ Difference between `WHERE` vs `HAVING`
- 🔄 Combining `GROUP BY` with `ORDER BY` for sorted output

---

## 📖 What I Learned

### 🔹 `GROUP BY`: Organizing Data into Logical Groups

The `GROUP BY` clause groups rows that have the same values into summary rows.

**Basic Syntax:**
```sql
SELECT column, AGG_FUNC(column)
FROM table
GROUP BY column;
```
### 🧠 Pro Tips:
- `GROUP BY` must include all non-aggregated columns in the `SELECT` clause.
- It's often used with aggregate functions like `COUNT`, `SUM`, `AVG`, etc.
- You can group by multiple columns for multi-level summaries.

### 🔹 `HAVING`: Filtering Groups After Aggregation

Unlike WHERE, which filters before grouping, HAVING filters after grouping — i.e., it works with aggregated data.

**Basic Syntax:**

```sql
SELECT column, AGG_FUNC(column)
FROM table
GROUP BY column
HAVING AGG_FUNC(column) condition;
```

**Example:**
```sql

SELECT column, AGG_FUNC(column)
FROM table
GROUP BY column
HAVING AGG_FUNC(column) condition;
```
### 🧠 Pro Tips:
- Use `WHERE` for row-level filters before grouping.
- Use `HAVING` for group-level filters after aggregation.
- Both can be used together for maximum control.

--- 

## ❓ Example Practice Questions
Here are a few real-world style questions I practiced today:

1. 📊 Find the total number of employees in each department.
2. 💰 List departments where the average salary is greater than 75,000.
3. 🧑‍🏫 Show job titles with more than 5 employees in each.

These examples helped solidify my understanding of how data can be summarized and grouped for insightful reporting.

--- 

## 📂 Files Included
- `data.sql` – Contains:
  - Table schema definitions (e.g., employees, departments)
  - Sample data for aggregation
  - Practice questions as SQL comments
- `queries.sql` – Contains:
  - Query solutions for today's practice questions
  - Commentary and explanation on each solution
  - Alternate variations and optimization suggestions

--- 

## 📝 Summary
Today was all about data aggregation and group-level filtering — key skills in turning raw records into meaningful reports and dashboards. Understanding GROUP BY and HAVING empowers us to answer questions like:

- How many users signed up per month?
- Which products generate the most revenue?
- Which teams or departments outperform others?

These techniques are widely used in:

- 📈 Data analytics
- 🧾 Financial reporting
- 📦 Inventory summaries
- 📋 User segmentation
- 🎯 Performance tracking

--- 
 
📅 Up next: Day 9 — Mastering INNER JOIN to combine data across multiple tables and uncover meaningful relationships!

Happy querying! 💻📊

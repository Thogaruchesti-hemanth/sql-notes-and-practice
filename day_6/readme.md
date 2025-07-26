# 📘 Aggregation & Uniqueness — `DISTINCT`, `COUNT`, `MIN`, `MAX`, `AVG`, `SUM`

Welcome to Day 6 of my daily SQL learning journey!
Today, I explored SQL's aggregate functions and how to use `DISTINCT` to filter out duplicate values. These tools are foundational for data analysis — helping summarize, count, and measure data efficiently across large datasets.
  
## 🧠 Main Topics Covered

- 🔁 Removing duplicates using `DISTINCT`
- 🔢 Counting rows with `COUNT(*)` and `COUNT(column)`
- 🧮 Calculating totals with `SUM()`
- 📊 Getting average values using `AVG()`
- ⬆️ Finding maximum values using `MAX()`
- ⬇️ Finding minimum values using `MIN()`

---

## 📖 What I Learned

### 🔹`DISTINCT`: Return Unique Values Only

The DISTINCT keyword filters out duplicate rows and returns only unique results.

**Example**
```
SELECT DISTINCT department FROM employees;
```
- ✅ Useful for understanding variety and eliminating repetition in result sets.

### 🔹`COUNT()`: Count Records

Used to count rows — either all `(COUNT(*))` or non-null values of a specific column.

**Example**
```
SELECT COUNT(*) FROM employees;              -- Total rows
SELECT COUNT(department) FROM employees;     -- Rows with non-null department

```
### 🔹`SUM()`: Total of Numeric Column

Adds up all the values in a column.

**Example**
```
SELECT SUM(salary) FROM employees;
```
- 💡 Often used in finance and reporting dashboards.

### 🔹 `AVG()`: Average Value

Calculates the mean of a numeric column.

**Example**
```
SELECT AVG(age) FROM users;
```

### 🔹`MAX()` & `MIN()` : Extremes

Used to find the highest and lowest values in a column.

**Example**
```
SELECT MAX(price) FROM products;
SELECT MIN(join_date) FROM employees;
```
  - 🚀 Great for identifying best performers, earliest joiners, or top-selling items.

## ❓ Example Practice Questions
1. 🔢 Count how many unique departments are there in the `employees` table.
2. 💰 Find the total salary paid to employees in the `Sales` department.
3. 🏆 Get the name of the employee with the highest salary.

These exercises helped me build intuition around aggregation and uniqueness — core concepts in any reporting or dashboard feature.


## 📂 Files Included
- data.sql – Contains:
  - Table schema definitions
  - Sample data insertion
  - Practice questions in SQL comment format
- queries.sql – Contains:
  - Query solutions to today’s practice questions
  - Explanation of each query
  - Possible improvements and alternate ways to write the same queries

## 📝 Summary
Today was focused on analyzing and summarizing data using aggregate functions and `DISTINCT`.
These tools are essential for generating insights, reports, and statistics from raw tables.

They're widely used in:

- BI dashboards & analytics
- Financial summaries
- KPI reporting
- Product performance tracking
- Database audits

----
📅 Onward to more complex querying techniques soon! 
Happy querying! 💻📈

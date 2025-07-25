# 📘  Day 5: Data Modification — `UPDATE`, `DELETE`

Welcome to Day 5 of my daily SQL learning journey! Today’s focus was on modifying existing data in SQL using the powerful `UPDATE` and `DELETE` statements. These operations are crucial when maintaining and managing dynamic databases — ensuring data stays relevant, correct, and up to date.---

## 🧠 Main Topics Covered

- ✏️ Modifying existing records using `UPDATE`
- 🧼 Removing records using `DELETE`
- ⚠️ Importance of `WHERE` clause in modification operations
- 🔐 Avoiding unintentional full-table updates/deletions
- 🔄 Updating multiple columns at once
- 🛑 Safe deletion practices with backups or soft deletes

---

## 📖 What I Learned

### 🔹`UPDATE`: Changing Data Within a Table

The `UPDATE` statement is used to change existing values in one or more columns.

**Basic Syntax:**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```
**Example**
```
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'Sales';
```
- 🔸 Always use a WHERE clause with UPDATE unless you truly intend to modify all rows!

#### 🧠 Pro Tips:
- You can use expressions in `SET`, such as `column = column + 10`
- To update multiple columns, separate them with commas
- Updating without a condition affects every row — be cautious!

### 🔹`DELETE`: Removing Records from a Table

The `DELETE` statement is used to remove rows from a table based on a condition.

**Basic Syntax:**

```sql
DELETE FROM table_name
WHERE condition;
```
**Example:**
```
DELETE FROM orders
WHERE order_date < '2020-01-01';
```
- ❗ NEVER omit the WHERE clause unless you're deliberately removing all data from the table.

#### 🔒 Safety First:

- Use `SELECT` first to preview what you're about to delete:
  ```SELECT * FROM orders WHERE order_date < '2020-01-01';```
- Consider using soft deletes by adding a column like `is_deleted` and updating that instead of deleting the row.
- 

## ❓ Example Practice Questions
Here are some scenarios I practiced to reinforce today’s concepts:

1. ✏️ Update all employee salaries by 15% in the `employees` table if their performance rating is above 4.
2. 🗑 Delete all products from the `products` table where the `stock_quantity` is 0.
3. 🔁 Update the status of all orders placed before January 1, 2022 to ` 'archived' `  in the `orders` table.
These questions helped me simulate real-world data maintenance tasks such as promotions, cleaning up out-of-stock items, and archiving old records.

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
Today was all about data modification — one of the most critical aspects of managing relational databases. Whether you're correcting errors, handling transactions, or archiving outdated info, mastering `UPDATE` and `DELETE` is essential.
These operations are frequently used in:

- Admin dashboards
- Inventory management systems
- Financial applications
- User profile and settings updates
- Cleanup scripts and cron jobs
- 
Practising with caution and validating conditions ensures your updates and deletions are both effective and safe.
---

📅 Exploring essential SQL aggregation and uniqueness tools: DISTINCT, COUNT, MIN, MAX, AVG, and SUM to analyze and summarize data efficiently.

Happy querying! 💻📊

# 📘 Day 4: Data Pagination & Sorting — `ORDER BY`, `LIMIT`, `OFFSET`

Welcome to Day 4 of my daily SQL learning journal! Today’s focus was on enhancing query output presentation and controlling the volume of result sets using three powerful SQL clauses: `ORDER BY`,` LIMIT`, and `OFFSET`. These are especially useful for sorting, pagination, ranking, and building scalable UI-backed data queries.
---

## 🧠 Main Topics Covered

- 🔢 Sorting records using `ORDER BY`
- 📉 Applying `ASC` (ascending) and `DESC` (descending) order
- 📦 Limiting output using `LIMIT`
- ⏭ Skipping records using `OFFSET`
- 📚 Combining all three to implement effective pagination and ranked queries



---

## 📖 What I Learned

### 🔹`ORDER BY`: Sorting Your Data

The `ORDER BY` clause allows sorting results based on one or more columns, either in ascending (default) or descending order.

**Example Syntax:**

```sql
SELECT * FROM employees
ORDER BY salary DESC;

```
  - Sort by multiple columns
    ```
     ORDER BY department ASC, salary DESC;
    ```
  - Default is ascending; `DESC` must be specified explicitly.

### 🔹`LIMIT`: Capping the Output

The LIMIT clause is used to restrict the number of rows returned by a query. It's essential when working with large datasets or when implementing pagination.

**Example Syntax:**

```sql
SELECT * FROM products
ORDER BY price ASC
LIMIT 5;
```

### 🔹 `OFFSET`: Skipping Records

`OFFSET` skips a defined number of rows before starting to return the query result.

**Example Syntax:**

```sql

SELECT * FROM orders
ORDER BY order_date DESC
LIMIT 5 OFFSET 5;

```
This query skips the first 5 rows and returns the next 5 — useful for page 2 of a paginated list.

### 🔹 Combining `ORDER BY` + `LIMIT` + `OFFSET`: Pagination

Together, these clauses help build paginated data retrieval systems (e.g., APIs, dashboards).

Page N logic (with page size = 10):

```sql

SELECT * FROM items
ORDER BY item_id
LIMIT 10 OFFSET (N - 1) * 10;
```

## ❓ Example Practice Questions

Here are a few SQL scenarios that I explored and solved using today’s topics:

1. 📈 Retrieve the top 5 highest-paid employees from the  `employees` table.
2. 📦 Display the 6th to 10th most recent orders from the `orders` table.
3. 🛒 Sort products by price in descending order, but show only the top 3 cheapest items (carefully applying reverse logic).

Each question reinforces real-world use cases like salary rankings, recent activity logs, and filtering catalog items.

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
Today's session was all about controlling and presenting query output in smarter ways. Sorting with ORDER BY, restricting with LIMIT, and skipping rows using OFFSET form the core of efficient data presentation and pagination strategies.

These tools are widely used in:

- Admin panels
- API pagination
- Reporting dashboards
- Leaderboards and rankings

Understanding how to combine them effectively opens doors to scalable, user-friendly applications.
---

📅 Next Up: Day 5 — Mastering Data Modification using `UPDATE` and `DELETE` statements to manage existing records effectively!

Happy learning and querying! 💻📊
Happy querying! 💻📊

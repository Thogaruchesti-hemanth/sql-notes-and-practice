# 📘 Day 1: Introduction to SQL – `CREATE TABLE`, `INSERT`, `SELECT`

Welcome to Day 1 of my SQL learning journey! Today, I focused on three foundational SQL operations that are critical to understanding how relational databases work:

---

## 🧠 Main Topics Covered

- `CREATE TABLE`: How to define a new table with appropriate columns and data types.
- `INSERT INTO`: How to add one or more records into a table.
- `SELECT`: How to retrieve data from a table using different forms of queries.

---

## 📖 What I Learned

### 🔹 `CREATE TABLE`

The `CREATE TABLE` statement allows us to define the structure of a table. This includes naming the table, defining column names, data types, constraints like `PRIMARY KEY`, `NOT NULL`, etc.

**Example Syntax:**

```sql
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  grade VARCHAR(2)
);
```

### 🔹 `INSERT INTO`

Once a table is created, we use INSERT INTO to add records to it.

**Example Syntax:**

```sql
INSERT INTO students (id, name, age, grade) VALUES
(1, 'Alice', 20, 'A'),
(2, 'Bob', 21, 'B');
```

### 🔹 `SELECT`

This command is used to fetch data from a table. It can be as simple as selecting all rows, or more specific by selecting columns and applying conditions.

**Example Syntax:**

```sql

-- Fetch all columns and rows
SELECT * FROM students;

-- Fetch specific columns
SELECT name, grade FROM students;
```

## ❓ Example Practice Questions

1. Create a table called `books` with columns: `book_id`, `title`, `author`, `published_year`.
2. Insert at least 3 records into the `books` table.
3. Write a query to retrieve all book titles and authors from the `books` table.

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
Today’s session laid the foundation for working with relational databases. Mastering `CREATE` `TABLE`, `INSERT`, and `SELECT` is essential before delving into more complex operations, such as filtering, joining, or aggregating data. Everything learned today will serve as a building block in the coming days.

---

✅ Stay tuned for Day 2, where I’ll dive into filtering data using `WHERE`, `AND`, `OR`, and `NOT`.

Happy querying! 💻📊

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
🔹 SELECT
This command is used to fetch data from a table. It can be as simple as selecting all rows, or more specific by selecting columns and applying conditions.
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

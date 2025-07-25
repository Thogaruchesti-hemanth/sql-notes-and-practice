# 📘  Day 5: Data Modification — `UPDATE`, `DELETE`

Welcome to Day 5 of my daily SQL learning journey! Today’s focus was on modifying existing data in SQL using the powerful `UPDATE` and `DELETE` statements. These operations are crucial when maintaining and managing dynamic databases — ensuring data stays relevant, correct, and up to date.---

## 🧠 Main Topics Covered

- `UPDATE`: Modify one or more records in a table.
- `DELETE`: Remove records from a table based on conditions.
- Use of `WHERE` clause to prevent unintended changes or deletions.
- Safeguards and best practices to avoid catastrophic data loss.

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

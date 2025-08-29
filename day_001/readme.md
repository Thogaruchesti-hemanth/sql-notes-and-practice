# 📘 Day 1: Introduction to SQL – `CREATE TABLE`, `INSERT`, `SELECT`

Welcome to **Day 1 of my SQL learning journey** 🎉

SQL (**Structured Query Language**) is the standard language used to interact with **relational databases**.
If you’ve ever worked with spreadsheets (like Excel or Google Sheets), SQL is very similar—but much more powerful.

This guide is written in a **beginner-friendly way**, so even if you’ve never worked with databases before, you’ll be able to start from scratch.

---

## 🧠 What is a Database?

A **database** is a structured collection of data. Instead of storing information randomly (like in text files), databases organize data into **tables** that are easy to search, filter, and update.

Think of it like a **digital filing cabinet** 📂.

* A **table** = Like a spreadsheet (rows + columns).
* A **row** = A single record (like one entry in the spreadsheet).
* A **column** = A property (name, age, grade, etc.).

### Example: `students` table

| id | name  | age | grade |
| -- | ----- | --- | ----- |
| 1  | Alice | 20  | A     |
| 2  | Bob   | 21  | B     |

* Each **row** = one student’s data
* Each **column** = a specific attribute of a student

---

## 📖 What is SQL?

SQL (**Structured Query Language**) is the language we use to **talk to databases**.
It lets us:

1. **Create** tables (`CREATE TABLE`)
2. **Insert** data into them (`INSERT INTO`)
3. **Retrieve** data (`SELECT`)
4. **Update** data (`UPDATE`)
5. **Delete** data (`DELETE`)

---

## 🔑 SQL Data Types (Basics)

When creating a table, we must tell the database **what kind of data** each column will store. These are called **data types**:

* `INT` → Whole numbers (1, 100, -5)
* `VARCHAR(n)` → Text, up to `n` characters long (`VARCHAR(50)` = max 50 characters)
* `DATE` → Stores dates (`'2025-08-29'`)
* `DECIMAL(p, s)` → Numbers with decimals (`DECIMAL(5,2)` = up to 999.99)
* `BOOLEAN` → `TRUE` or `FALSE`

---

## ⚙️ SQL Constraints

Constraints = rules applied to columns so data stays valid:

* **PRIMARY KEY** → Uniquely identifies each row
* **NOT NULL** → Column must have a value (can’t be empty)
* **UNIQUE** → No duplicate values allowed
* **CHECK** → Value must satisfy a condition (e.g., `age > 0`)
* **FOREIGN KEY** → Links one table to another

Example:
A student’s `id` should always be **unique**, so we set it as the **PRIMARY KEY**.

---

# 🚀 Main Topics of Day 1

* `CREATE TABLE` – Defining a new table
* `INSERT INTO` – Adding records
* `SELECT` – Retrieving data

---

## 🔹 1. `CREATE TABLE`

This is the very first step—you tell the database what kind of table you want and what columns it will have.

### 📌 Syntax

```sql
CREATE TABLE table_name (
  column1 datatype constraint,
  column2 datatype constraint,
  ...
);
```

* `table_name` → The name of your table
* `column1, column2` → Names of your columns
* `datatype` → Type of data (e.g., INT, VARCHAR)
* `constraint` → Optional rules (PRIMARY KEY, NOT NULL, etc.)

---

### 📌 Example

```sql
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT CHECK (age > 0),
  grade VARCHAR(2)
);
```

✅ This creates a table called `students` with:

* `id` (must be unique & primary key)
* `name` (required)
* `age` (must be greater than 0)
* `grade` (like A, B, C, etc.)

---

## 🔹 2. `INSERT INTO`

Now that we have a table, let’s add some data.

There are **three common ways** to insert data:

---

### 1️⃣ Insert Without Column Names (order must match table)

```sql
INSERT INTO students VALUES (1, 'Alice', 20, 'A');
```

⚠️ Risky if table structure changes later, but works.

---

### 2️⃣ Insert With Column Names (recommended)

```sql
INSERT INTO students (id, name, age, grade)
VALUES (2, 'Bob', 21, 'B');
```

👍 Safer because you explicitly mention which values go into which columns.

---

### 3️⃣ Insert Multiple Rows

```sql
INSERT INTO students (id, name, age, grade) VALUES
(3, 'Charlie', 22, 'B'),
(4, 'Diana', 20, 'A'),
(5, 'Eve', 23, 'C');
```

🎉 One command, multiple records.

---

## 🔹 3. `SELECT`

The `SELECT` command is used to **retrieve data** from a table.

---

### 1️⃣ Select All Data

**Syntax:**

```sql
SELECT * FROM table_name;
```

**Example:**

```sql
SELECT * FROM students;
```

✅ This will show all rows and all columns in the `students` table.

---

### 2️⃣ Select Specific Columns

**Syntax:**

```sql
SELECT column1, column2 FROM table_name;
```

**Example:**

```sql
SELECT name, grade FROM students;
```

✅ This will only show the `name` and `grade` columns.

---

# 🎯 Practice Questions

1. Create a table called `books` with columns:

   * `book_id` (INT, Primary Key)
   * `title` (VARCHAR)
   * `author` (VARCHAR)
   * `published_year` (INT)

2. Insert at least 3 records into the `books` table.

3. Write a query to retrieve all book titles and authors from the `books` table.

---

# 📂 Files Included

* **data.sql** → Table schemas + data insertion + practice questions (in comments)
* **queries.sql** → Solutions to the practice questions, with explanations

---

# 📝 Summary

On **Day 1**, I learned:

✅ **How databases work** (tables, rows, columns)
✅ **Basic SQL data types and constraints**
✅ `CREATE TABLE` → Build table structure
✅ `INSERT INTO` → Add single & multiple records
✅ `SELECT` → Retrieve full table or specific columns

This is the **foundation of SQL**. Everything else (filtering, joins, aggregations) builds on top of this knowledge.

---

🚀 Next → **Day 2: Filtering data with `WHERE`, `AND`, `OR`, and `NOT`**

Happy querying! 💻📊

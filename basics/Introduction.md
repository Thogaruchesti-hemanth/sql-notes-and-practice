# Introduction to RDBMS (Relational Database Management System)

## What is a Database?

A **Database** is a collection of organized data so that it can be easily **stored, accessed, managed, and updated**.

* **Example:** A school database might store information about students, teachers, subjects, and exam results.

---

## What is RDBMS?

**RDBMS (Relational Database Management System)** is software that helps you manage data stored in **tables (relations)**.

* Data is stored in rows and columns (like a spreadsheet).
* Tables are connected using **relationships**.
* It ensures **consistency, accuracy, and easy access** to data.

**Popular RDBMS examples:** MySQL, PostgreSQL, Oracle, SQLite, MS SQL Server.

---

## Basic Terminology

1. **Table** → A collection of rows and columns (like a spreadsheet).
2. **Row (Record)** → A single entry of related data in a table.
3. **Column (Field)** → A property/attribute of data (e.g., name, email, age).
4. **Primary Key** → A column (or combination of columns) that uniquely identifies each row.
5. **Foreign Key** → A column that links one table to another (establishes relationships).
6. **Constraint** → A rule applied to ensure only valid data is stored (e.g., NOT NULL, UNIQUE).

---

## Relationships Between Tables

1. **One-to-One (1:1)**

   * Each record in Table A relates to only one record in Table B.
   * Example: One person has one passport.

2. **One-to-Many (1\:N)**

   * One record in Table A relates to many records in Table B.
   * Example: One customer can place many orders.

3. **Many-to-Many (M\:N)**

   * Multiple records in Table A relate to multiple records in Table B.
   * Requires a **junction (bridge) table**.
   * Example: Students can enroll in many courses, and each course can have many students.

---

## Constraints in RDBMS

Constraints are **rules applied to columns or tables** to ensure data validity.

### 1. PRIMARY KEY

* Uniquely identifies each record.
* Must be **unique** and **not null**.
* Only one primary key per table.

```sql
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(100)
);
```

---

### 2. FOREIGN KEY

* Maintains **referential integrity** between tables.
* Ensures values exist in the referenced table.

```sql
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  student_id INT,
  FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
```

---

### 3. NOT NULL

* Ensures a column **cannot have NULL values**.
* Used when a field must always have a value.

```sql
CREATE TABLE Employees (
  emp_id INT NOT NULL,
  name VARCHAR(100) NOT NULL
);
```

---

### 4. UNIQUE

* Ensures all values in a column are **different**.
* Unlike PRIMARY KEY, multiple UNIQUE constraints are allowed.
* Accepts NULL (but usually only one).

```sql
CREATE TABLE Users (
  email VARCHAR(100) UNIQUE,
  username VARCHAR(50) UNIQUE
);
```

---

### 5. CHECK

* Restricts values in a column based on a condition.

```sql
CREATE TABLE Products (
  price DECIMAL(10,2),
  CHECK (price > 0)
);
```

---

### 6. DEFAULT

* Sets a **default value** if none is provided.

```sql
CREATE TABLE Accounts (
  status VARCHAR(20) DEFAULT 'Active'
);
```

---

### 7. AUTO\_INCREMENT

* Automatically increments numeric values for each new row.
* Commonly used for primary keys.

```sql
CREATE TABLE Tickets (
  ticket_id INT AUTO_INCREMENT PRIMARY KEY,
  issuer VARCHAR(255)
);
```

---

### 8. INDEX

*(Not a constraint, but improves performance)*

* Speeds up **searching and querying** data.

```sql
CREATE INDEX idx_username ON Users(username);
```

---

### 9. COMPOSITE KEY

* A **primary key made of two or more columns**.
* Used when a single column is not enough for uniqueness.

```sql
CREATE TABLE Enrollments (
  student_id INT,
  course_id INT,
  PRIMARY KEY (student_id, course_id)
);
```

---

### 10. ENUM / DOMAIN Constraint

* Restricts a column to **predefined values**.

```sql
CREATE TABLE Feedback (
  rating ENUM('Good', 'Average', 'Bad')
);
```

---

## Common Data Types in RDBMS

| Data Type                                   | Description                                                                                                     |
| ------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| **INT**                                     | Integer number                                                                                                  |
| **DECIMAL(p,s)** / **NUMERIC(p,s)**         | Fixed-point number with precision *(p = total digits, s = digits after decimal)*. Recommended for money/prices. |
| **VARCHAR(n)**                              | Variable-length string (up to n characters)                                                                     |
| **DATE**                                    | Date (YYYY-MM-DD)                                                                                               |
| **TIME**                                    | Time (HH\:MM\:SS)                                                                                               |
| **DATETIME**                                | Date + Time (useful for auditing)                                                                               |
| **YEAR** *(MySQL)*                          | Year only                                                                                                       |
| **BOOLEAN**                                 | True/False                                                                                                      |
| **ENUM** *(MySQL)*                          | Predefined set of values                                                                                        |
| **SET** *(MySQL)*                           | Multiple values from a set                                                                                      |
| **UUID** *(MySQL, PostgreSQL)*              | Universal Unique Identifier                                                                                     |
| **JSON** *(MySQL, PostgreSQL)*              | JSON formatted data                                                                                             |
| **XML** *(SQL Server)*                      | XML formatted data                                                                                              |
| **GEOMETRY** *(MySQL, PostGIS, PostgreSQL)* | Spatial data for maps                                                                                           |
| **ARRAY** *(PostgreSQL)*                    | Stores an array of elements                                                                                     |

---

## SQL Clauses

A **clause** is a keyword-based part of an SQL statement.
It defines a **specific action or condition** in a query.

* Think of clauses as **ingredients** that together form a query.

### Common SQL Clauses:

* **SELECT** → Extracts data from a database.
* **FROM** → Specifies the table(s) to query.
* **WHERE** → Filters records based on conditions.
* **ORDER BY** → Sorts results.
* **JOIN** → Combines rows from multiple tables.

---

✅ With this foundation, you can start writing SQL queries and building databases step by step.

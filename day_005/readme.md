# 📘 Data Modification & Table Management — `UPDATE`, `DELETE`, `DROP`, `TRUNCATE`, `ALTER`

Welcome to today’s SQL learning journey! 🚀
This session focuses on **modifying both data and table structures** in SQL. These operations are essential for maintaining **dynamic databases** — ensuring information stays **accurate, optimized, and adaptable** to new requirements.

---

## 🧠 Main Topics Covered

* ✏️ Modifying existing records using `UPDATE`
* 🧼 Removing records using `DELETE`
* 🧹 Clearing entire tables using `TRUNCATE`
* 🗑 Dropping columns or tables with `DROP`
* 🏗 Modifying table structures using `ALTER`
* ⚠️ Importance of `WHERE` in modification commands
* 🔒 Safe practices to avoid accidental data loss

---

## 📖 What I Learned

### 🔹 `UPDATE`: Changing Data Within a Table

The `UPDATE` statement modifies values in existing rows.

**Syntax:**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

**Example:**

```sql
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'Sales';
```

✅ Updates all Sales employees’ salaries by 10%.
⚠️ Omitting the `WHERE` clause updates **all rows**.

**Pro Tips:**

* Multiple columns can be updated at once
* Use expressions like `column = column + 10`
* Always test with `SELECT` before applying a large update

---

### 🔹 `DELETE`: Removing Records From a Table

The `DELETE` statement removes rows that match a condition.

**Syntax:**

```sql
DELETE FROM table_name
WHERE condition;
```

**Example:**

```sql
DELETE FROM orders
WHERE order_date < '2020-01-01';
```

✅ Deletes all orders placed before 2020.
⚠️ Omitting `WHERE` deletes **every row**.

**Safety Practices:**

* Preview with `SELECT` before deleting
* Consider soft deletes (`is_deleted = TRUE`) for recovery options

---

### 🔹 `TRUNCATE`: Clearing Entire Tables Quickly

The `TRUNCATE` statement removes **all rows** but keeps the table structure.

**Syntax:**

```sql
TRUNCATE TABLE table_name;
```

**Example:**

```sql
TRUNCATE TABLE logs;
```

✅ Deletes all rows from `logs` instantly.
✅ Resets auto-increment counters.
❌ Cannot filter rows (no `WHERE` clause).

---

### 🔹 `DROP`: Removing Tables or Columns

The `DROP` command permanently removes a table, database, or column.

**Syntax:**

```sql
DROP TABLE table_name;
```

**Example:**

```sql
DROP TABLE archived_orders;
```

✅ Deletes the entire table `archived_orders`.
⚠️ Irreversible — data and structure are gone.

**Drop a column:**

```sql
ALTER TABLE employees DROP COLUMN address;
```

---

### 🔹 `ALTER`: Modifying Table Structures

The `ALTER TABLE` statement changes columns, constraints, and defaults.

**Examples:**

```sql
-- Add new column
ALTER TABLE students ADD email VARCHAR(100);

-- Remove column
ALTER TABLE students DROP COLUMN grade;

-- Change datatype/size
ALTER TABLE students ALTER COLUMN name TYPE VARCHAR(100);

-- Add default
ALTER TABLE students ALTER COLUMN grade SET DEFAULT 'C';

-- Remove default
ALTER TABLE students ALTER COLUMN grade DROP DEFAULT;

-- Rename column
ALTER TABLE students RENAME COLUMN roll_no TO student_id;
```

✅ Keeps tables adaptable to evolving requirements.
⚠️ Some databases (like PostgreSQL) don’t support column reordering.

---

### 🔍 Difference Between `DELETE`, `TRUNCATE`, and `DROP`

| Feature                    | `DELETE`                           | `TRUNCATE`                      | `DROP`                      |
| -------------------------- | ---------------------------------- | ------------------------------- | --------------------------- |
| **What it does**           | Removes rows (with `WHERE` filter) | Removes all rows (no filtering) | Removes entire table/schema |
| **Table structure**        | Preserved                          | Preserved                       | Removed completely          |
| **Can use WHERE?**         | ✅ Yes                              | ❌ No                            | ❌ Not applicable            |
| **Rollback possible?**     | ✅ Yes (if inside a transaction)    | ⚠️ Sometimes (depends on DB)    | ❌ No                        |
| **Speed**                  | Slower (row by row)                | Faster (bulk delete)            | Instant                     |
| **Resets auto-increment?** | ❌ No                               | ✅ Yes                           | Not applicable              |
| **Use case**               | Delete specific rows               | Quickly empty a table           | Remove table permanently    |

---

## ❓ Example Practice Questions

1. ✏️ Increase all employees’ salary by 15% where performance rating > 4.
2. 🗑 Delete all products with stock quantity = 0.
3. 🔁 Update status of orders before Jan 1, 2022 to `'archived'`.
4. 🧼 Truncate the `logs` table to clear all history.
5. 🗑 Drop the `archived_orders` table permanently.
6. 🏗 Add a column `created_at` with default `CURRENT_TIMESTAMP` in `users` table.
7. 🔄 Rename `dept` column to `department_name` in `departments` table.
8. ❓ Explain when to use `DELETE` vs `TRUNCATE` vs `DROP`.

---

## 📂 Files Included

* **data.sql** → Contains:

  * Table schemas
  * Sample data
  * Practice questions in SQL comment format

* **queries.sql** → Contains:

  * Solutions with explanations
  * Alternative query approaches
  * Notes on best practices

---

## 📝 Summary

In this session, I learned how to:
✅ Use `UPDATE` to modify existing rows
✅ Use `DELETE` to remove rows selectively
✅ Use `TRUNCATE` to clear tables quickly
✅ Use `DROP` to remove tables or columns permanently
✅ Use `ALTER` to modify table structures

These operations are crucial in **real-world database maintenance**, especially when handling:

* Inventory cleanup
* Archiving logs
* Refactoring database schemas
* Enforcing new business rules

Practicing these commands with **caution** ensures safe and reliable database management.

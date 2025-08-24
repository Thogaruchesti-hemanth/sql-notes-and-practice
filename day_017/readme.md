# 🧠 Day 17: `CASE`, `IF`, `COALESCE` — Conditional Logic in SQL

Welcome to **Day 17** of my SQL learning journey!  
Today’s focus was on adding **conditional logic** to SQL queries using the powerful expressions: `CASE`, `IF`, and `COALESCE`.

These expressions help make SQL queries more dynamic and adaptable — enabling logic that changes output based on conditions, handles missing values, and builds readable results in complex datasets.

---

## 📌 Main Topics Covered

- 🧠 Using `CASE` for multi-condition logic
- 🔀 Simplifying logic with `IF` (MySQL-specific)
- 🚫 Handling NULLs and fallback values with `COALESCE`
- 🛠 Writing cleaner, more readable conditional queries
- 📋 Embedding logic in `SELECT`, `WHERE`, and `ORDER BY` clauses

---

## 📖 What I Learned

### 🎯 `CASE`: SQL's Version of IF-ELSE Logic

The `CASE` expression allows SQL to evaluate conditions in order and return a result based on the first true condition.

**Syntax:**

```sql
SELECT 
  column,
  CASE 
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE default_result
  END AS alias_name
FROM table;
````

**Example:**

```sql
SELECT name, marks,
  CASE 
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 75 THEN 'B'
    WHEN marks >= 60 THEN 'C'
    ELSE 'F'
  END AS grade
FROM students;
```

✅ This logic assigns a grade based on each student's marks.

---

### ⚙️ `IF`: Simple Conditional (MySQL Specific)

`IF(condition, true_result, false_result)` is a shorter alternative to `CASE` when only two outcomes are needed.

```sql
SELECT name, salary,
  IF(salary > 50000, 'High', 'Low') AS salary_level
FROM employees;
```

✔️ Useful for quick decisions without the verbosity of `CASE`.

---

### 💡 `COALESCE`: Handling NULLs Gracefully

`COALESCE(expr1, expr2, ..., exprN)` returns the **first non-null** value in the list. Great for providing fallbacks.

```sql
SELECT name, COALESCE(phone, 'No Phone') AS contact
FROM customers;
```

📌 This replaces NULLs in the `phone` column with `"No Phone"`.

---

## ❓ Example Practice Questions

Here are some hands-on problems I tackled today:

1. 🎓 Assign grades to students based on their marks using `CASE`.
2. 💼 Label employees as "Senior" or "Junior" based on their experience using `IF`.
3. 📱 Show the first available contact detail (phone/email) for each user using `COALESCE`.

These problems mirror real-world reporting and data cleanup tasks, where handling conditions and missing values is key.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schemas (e.g., students, employees, users)
  * Sample data inserts
  * Practice questions embedded as SQL comments

* `queries.sql` – Contains:

  * Full solutions to all practice queries
  * Explanations for each conditional expression used
  * Optimizations and formatting suggestions

---

## 📝 Summary

Today's focus on `CASE`, `IF`, and `COALESCE` helped me understand how SQL handles **logic-based transformations** and **missing data**. These expressions bring **decision-making power** directly into queries — making reports, labels, categorizations, and value substitutions much smarter.

**Real-world applications include:**

* Categorizing sales regions, grades, risk levels, etc.
* Flagging missing data with default values
* Dynamically labeling data in dashboards and exports
* Replacing complex procedural logic with inline SQL conditions

---

📅 Up next: **Day 18: Views** — exploring how to create virtual tables for reusable query logic, simplified access, and secure data abstraction.

Thanks for following along, and see you tomorrow! 🧾📊

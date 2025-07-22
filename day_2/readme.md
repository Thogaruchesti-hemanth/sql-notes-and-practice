# 📘 Day 2: Mastering the `WHERE` Clause in SQL

Welcome to **Day 2** of my SQL learning journey!  
Today’s focus was on mastering one of the most important components of SQL: the `WHERE` clause and logical operators used for filtering data in various ways.

---

## ✅ Day Number
**Day 2**

---

## 📚 Main Topics Covered

- `WHERE` Clause for Filtering Rows
- Logical Operators: `AND`, `OR`, `NOT`
- Combining Multiple Conditions
- Comparison Operators: `=`, `!=`, `>`, `<`, `>=`, `<=`
- Parentheses for Precedence Control
- Best Practices for Writing Readable and Efficient Filters

---

## 💡 What I Learned

- How to apply the `WHERE` clause to select rows that meet specific criteria.
- Combining multiple filter conditions using `AND` and `OR` to build more powerful queries.
- Using the `NOT` operator to exclude specific data patterns or values.
- Importance of parentheses `()` to manage precedence and avoid logical errors when combining conditions.
- Writing **clear, concise**, and **performance-friendly** filter logic.

---

## 🧠 Example Practice Questions

Here are some of the real-world style practice questions tackled today:

1. **Retrieve all employees** with a salary **greater than 50,000** and working in the **'IT'** department.
2. **List customers** who are **not** from the city **'New York'** or **'Chicago'**.
3. **Find all orders** where the total amount is **between 100 and 500**, but **exclude any marked as "Cancelled"**.

These problems helped solidify understanding of logical flow, exclusion logic, and grouping conditions.

---

## 📂 Files Included

### 📄 `data.sql`
- Defines the **table schemas** used for today’s practice.
- Includes **sample data** using `INSERT` statements.
- Contains each **practice question as a comment** above the relevant dataset.

### 📄 `queries.sql`
- Contains **SQL solutions** to all practice problems.
- Each query is followed by:
  - 📝 **Explanation** of the logic used.
  - ✅ **Suggestions** for performance improvements or cleaner syntax.
  - 👀 **Notes** on how parentheses affect evaluation and correctness.

---

## 🚀 Quick Reference Guide

| Concept | Syntax Example | Use Case |
|--------|----------------|----------|
| `WHERE` | `SELECT * FROM employees WHERE department = 'IT';` | Filter rows based on a condition |
| `AND` | `WHERE salary > 50000 AND department = 'IT'` | Combine conditions; both must be true |
| `OR` | `WHERE city = 'New York' OR city = 'Chicago'` | Match if either condition is true |
| `NOT` | `WHERE NOT status = 'Cancelled'` | Exclude rows that meet a condition |
| Parentheses | `WHERE (salary > 50000 AND department = 'IT') OR city = 'Boston'` | Ensure correct logical grouping |

---

## 🧭 Best Practices Learned

- Always **use parentheses** when combining multiple `AND` and `OR` to **avoid ambiguity**.
- Use **aliasing** and **clear column references** to improve query readability.
- Write filters in a **logical top-down order**: narrow down high-selectivity conditions first.
- Avoid using `!=` or `NOT IN` with `NULL` values unless explicitly handled.
- Consider using `BETWEEN`, `IN`, and `LIKE` for **simplified expressions** when appropriate.

---

## 🙌 Final Thoughts

Filtering data using the `WHERE` clause is foundational in SQL.  
Today’s session has made it clear how **precision in writing conditions** can dramatically affect the **results, performance, and clarity** of SQL queries.

Stay tuned for **Day 3**, where I’ll dive into **pattern matching and wildcards** (`LIKE`, `%`, `_`), perfect for text-based filtering!

---

📁 **Repository Navigation:**  
You can find the full code and exercises for Day 2 in the [`Day_2/`](./) folder.

> Feel free to fork, star, or raise issues if you'd like to collaborate or suggest improvements.

---

🚀 Happy Querying!  
— *Sai Hemanth*

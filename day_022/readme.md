# 🧠 Day 22: `Review + Practice Set` — Consolidating Learnings from Day 15 to Day 21

Welcome to **Day 22** of my SQL learning journey!  
Today’s session was all about **revision and reinforcement** of key concepts covered over the last week — from **Day 15 to Day 21**.

By applying everything in a combined practice set, I aimed to solidify my understanding and recognize how different SQL features work together in real-world scenarios.

---

## 📌 Topics Reviewed (Day 15 to Day 21)

- 🧮 **Aggregate Functions**: `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`
- 🧱 **GROUP BY & HAVING**: Grouping records and applying conditions on groups
- 🔗 **Joins**:
  - `INNER JOIN`
  - `LEFT JOIN`
  - `RIGHT JOIN`
- 🔍 **Filtering Data**:
  - `WHERE`, `IN`, `BETWEEN`, `LIKE`, `IS NULL`
- 🧾 **ORDER BY**: Sorting query results
- 🧠 **Combining Clauses**: Using `JOIN` + `GROUP BY` + `HAVING` + `ORDER BY` together
- 🧰 **Query Optimization**: Use of aliases, proper formatting, and best practices

---

## 📖 What I Learned

This practice set was crucial for connecting all the SQL concepts from the past week. Here's what I gained:

### 🔄 Integration of Concepts

Most real-world problems don’t rely on just one SQL concept — they require **layering** of filtering, joining, aggregation, and sorting. Practicing these together made my understanding more **context-aware** and **application-ready**.

### 🧼 Cleaner & Smarter Queries

Rewriting earlier solutions helped me:
- Use aliases (`e`, `d`, `o`) for cleaner joins
- Avoid unnecessary subqueries
- Add comments for clarity
- Write readable and maintainable SQL code

---

## ❓ Example Practice Questions

Here are a few review-style questions that reflect the combined usage of all topics from Day 15 to Day 21:

1. 📊 Find the **average salary** per department, and list only those with an average above 50,000.
2. 🧾 List all **products** that haven’t been ordered yet using `LEFT JOIN` and `IS NULL`.
3. 🎯 Show total sales per customer, sorted by highest to lowest, but include only those with more than 5 orders.
4. 👤 Get a list of employees who **do not belong** to any department (using `RIGHT JOIN` or `NOT IN`).
5. 📆 Retrieve orders placed **between two dates** and group them by order month.

---

## 📂 Files Included

- `data.sql` – Contains:
  - Schemas of related tables (e.g., `employees`, `departments`, `orders`, `products`, `customers`)
  - Insert statements for realistic practice data
  - Practice questions embedded as comments

- `queries.sql` – Contains:
  - Detailed query solutions for each review problem
  - Explanations for logic and structure
  - Alternate query strategies using different types of joins or filters

---

## 📝 Summary

Today's review was a valuable opportunity to reflect on and apply everything I've learned over the past week.  
I now feel more confident in my ability to:

- Write optimized SQL queries combining multiple features
- Understand when and how to use joins, filters, groups, and aggregates together
- Tackle real-world reporting or data analysis problems using SQL

This practice cemented the **foundation for advanced SQL topics** that I’ll be diving into soon.

---

📅 Up next: **Day 23: Student Database** — I’ll design and query a student-centric relational database with tables for students, courses, enrollments, and grades. 🎓📚

Let’s keep going! 🚀

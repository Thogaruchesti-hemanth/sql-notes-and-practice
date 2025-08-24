# 🔀 Day 13: `UNION`, `INTERSECT`, `EXCEPT` — Combining and Comparing Query Results

Welcome to **Day 13** of my daily SQL learning journey!  
Today’s focus was on **set operations** in SQL — namely `UNION`, `INTERSECT`, and `EXCEPT`. These operations allow us to **combine or compare the results of multiple SELECT queries**.

Set operations are particularly useful when working with **multiple datasets** that share the same structure and you need to merge, compare, or subtract them.

---

## 🧠 Main Topics Covered

- 🔁 `UNION` – Combining results and removing duplicates
- ➕ `UNION ALL` – Combining all results including duplicates
- 🔍 `INTERSECT` – Fetching only the common records from two queries
- 🚫 `EXCEPT` – Getting records from the first query that are **not** in the second
- ⚠️ Rules for set operations: same number and data type of columns
- 🧾 Ordering and filtering combined results

---

## 📖 What I Learned

### 🔹 `UNION` vs `UNION ALL`

- `UNION` combines the results of two SELECT queries **and removes duplicates**.
- `UNION ALL` includes **all duplicates** and is often faster.

```sql
SELECT name FROM customers
UNION
SELECT name FROM suppliers;
````

### 🔹 `INTERSECT`

Returns only those rows that **appear in both result sets**.

```sql
SELECT email FROM users
INTERSECT
SELECT email FROM newsletter_subscribers;
```

💡 This is ideal for finding common entities like users who both signed up and subscribed.

### 🔹 `EXCEPT`

Returns rows from the **first query that are not present** in the second.

```sql
SELECT email FROM users
EXCEPT
SELECT email FROM newsletter_subscribers;
```

🧠 This is useful for finding **non-overlapping data**, such as users who haven't subscribed yet.

---

## ❓ Example Practice Questions

Today’s learning was reinforced with hands-on practice:

1. 👥 Get a list of all unique participant names from the `event_2023` and `event_2024` tables.
2. 📬 Find all emails that are in the `users` table but **not** in the `marketing_list`.
3. 🔁 Identify product IDs that appear in both `warehouse_a` and `warehouse_b` inventories.

These examples helped simulate scenarios like merging data across years, filtering out duplicates, and identifying common entries.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schemas for sample datasets
  * Sample INSERT data
  * Practice questions as inline comments for clarity and reference

* `queries.sql` – Contains:

  * Solutions to today's set operation problems
  * Clear breakdowns of when and why to use each set operator
  * Suggestions for performance improvements and alternative logic

---

## 📝 Summary

Today’s exploration into SQL set operations expanded my ability to **manipulate entire result sets** effectively. These tools are **essential** when working with merged reports, filtering data across systems, or comparing user activities over time.

🛠 **Real-world applications** include:

* Merging user data from multiple campaigns
* Identifying overlapping customer segments
* Excluding unsubscribed users from mailing lists
* Comparing inventory or sales records across branches

---

📅 Up next: **Day 14: Review + Real-World Query Practice —** revisiting key concepts and applying them in more realistic scenarios! Perfect time to strengthen my skills before moving to advanced topics.

Happy querying! 💻🧠

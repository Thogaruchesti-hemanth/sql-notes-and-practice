# 📘 **Day 3: SQL Filtering – `IN`,` BETWEEN`, `LIKE`, `IS NULL`**

Welcome to Day 3 of my SQL learning journey. Today, I focused on key filtering operators that help narrow down results based on specific conditions. These operators are critical when building meaningful queries from data tables.

---
## 🎯 Main Topics Covered
- `IN` operator
- `BETWEEN` operator
- `LIKE` operator
- `IS NULL` and `IS NOT NULL`

---

## 🧠 What I Learned

### 🔹 `IN` Operator
Used to match a value against a list of possible values.

```sql
SELECT * FROM employees WHERE department IN ('HR', 'Finance', 'IT');
```

🆚 Equivalent to:

```sql
SELECT * FROM employees WHERE department = 'HR' OR department = 'Finance' OR department = 'IT';
```
✅ Best Practice: Prefer IN over multiple OR conditions for readability and maintainability.


### 🔹 `BETWEEN` Operator
Used for range filtering (inclusive).

```sql
SELECT * FROM products WHERE price BETWEEN 100 AND 500;
📝 Note: BETWEEN a AND b includes both a and b. For dates, ensure proper format ('YYYY-MM-DD').
```


### 🔹 `LIKE` Operator
Used for pattern matching.

| Pattern  | Meaning                          |
| -------- | -------------------------------- |
| `'A%'`   | Starts with A                    |
| `'%n%'`  | Contains 'n' anywhere            |
| `'_a%'`  | Second character is 'a'          |
| `'A_n%'` | Starts with A, third char is 'n' |


```sql
SELECT * FROM customers WHERE name LIKE 'A%n%';
```
🧠 Tip: Use _ for single-character wildcards, % for any length (including 0) wildcards.


### 🔹 `IS NULL` and `IS NOT NULL`
Used to check if a column has a missing (NULL) value.

```sql
SELECT * FROM orders WHERE delivery_date IS NULL;
```
⚠️ Gotcha: NULL is not equal to anything, even another NULL. Avoid using = NULL or != NULL.


## ❓ Practice Questions
1. Retrieve all employees whose department is either `HR`, `Finance`, or `IT`.
2. Find all products priced between 100 and 500.
3. List all customer names that start with 'A' and contain 'n' in the middle.
4. Get all orders where the delivery date is not provided (NULL).


## 📂 Files Included
- data.sql – Contains:
  - Table schema definitions
  - Sample data insertion
  - Practice questions in SQL comment format
- queries.sql – Contains:
  - Query solutions to today’s practice questions
  - Explanation of each query
  - Possible improvements and alternate ways to write the same queries

## 💡 Tips & Gotchas
- Use `IN` for clean, readable multi-value conditions.
- `BETWEEN` is inclusive; consider boundary values.
- `LIKE` patterns are case-sensitive in most databases unless configured otherwise.
- Always use `IS NULL` or `IS NOT NULL` when dealing with missing values.
- `NULL` never behaves like a regular value – it’s "unknown", not zero or empty.


## 📝 Summary

Today’s session was about mastering SQL filtering capabilities with:

- ✅ `IN` for matching against multiple values.
- ✅ `BETWEEN` for defining numeric or date ranges.
- ✅ `LIKE` for pattern-based searching using wildcards.
- ✅ `IS NULL` / `IS NOT NULL` for checking missing values.

----- 

These filtering techniques form the core of effective data querying and prepare us for working with `ORDER BY`, `LIMIT`, `OFFSET`, in future lessons.

Happy querying! 💻📊.

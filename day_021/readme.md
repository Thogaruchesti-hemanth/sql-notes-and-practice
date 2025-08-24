# 🔐 Day 21: `Transactions and ACID` — Ensuring Reliable Database Operations

Welcome to **Day 21** of my SQL learning journey!
Today’s focus was on one of the most **crucial aspects of database integrity and reliability** — **Transactions** and the **ACID** properties that govern them.

In any system where **multiple operations** must either **all succeed or all fail**, understanding transactions and ACID is non-negotiable.

---

## 🧠 Main Topics Covered

* 🔄 What is a Transaction in SQL
* 🧱 ACID Properties:

  * **A**tomicity
  * **C**onsistency
  * **I**solation
  * **D**urability
* 🧰 SQL Transaction Commands:

  * `BEGIN TRANSACTION`
  * `COMMIT`
  * `ROLLBACK`
* 🔒 Isolation Levels (Intro)
* 🧪 Use cases and real-world examples

---

## 📖 What I Learned

### 🔹 What is a Transaction?

A **transaction** is a sequence of one or more SQL statements that must be executed as a **single unit of work**. Either **all changes are committed**, or **none of them take effect**.

It’s like editing a document — you can either save all the changes or discard them.

### 🔹 The ACID Properties

Each transaction is expected to follow the **ACID** properties to ensure data integrity and reliability:

| Property        | Description                                                                                                           |
| --------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Atomicity**   | All operations in the transaction either succeed or fail as a whole. No partial updates.                              |
| **Consistency** | A transaction brings the database from one valid state to another, maintaining rules like constraints, cascades, etc. |
| **Isolation**   | Transactions are isolated from each other; intermediate states are hidden from other transactions.                    |
| **Durability**  | Once committed, the changes survive system failures. They're written permanently to disk.                             |

---

## 🛠️ SQL Commands for Transactions

```sql
BEGIN TRANSACTION;

-- SQL statements (INSERT, UPDATE, DELETE, etc.)

COMMIT;   -- Save changes permanently
-- OR
ROLLBACK; -- Undo all operations in the transaction
```

### 🔁 Example:

```sql
BEGIN TRANSACTION;

UPDATE accounts SET balance = balance - 1000 WHERE id = 1;
UPDATE accounts SET balance = balance + 1000 WHERE id = 2;

COMMIT;
```

If any of the above statements fail, using `ROLLBACK;` will **undo both**, ensuring no money is lost or duplicated — a critical concept in **banking systems**.

---

## ❓ Example Practice Questions

Here are some practical transaction-focused questions I explored:

1. 💸 Transfer money from one account to another and ensure both updates happen atomically.
2. 🛒 Simulate a product purchase where stock must reduce and order history is created — rollback on failure.
3. 🧾 Insert an order and its items into multiple tables, ensuring consistency using a transaction.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schemas like `accounts`, `orders`, `products`, etc.
  * Sample data for simulating financial operations
  * Practice questions as SQL comments

* `queries.sql` – Contains:

  * Transactional query solutions with `BEGIN`, `COMMIT`, and `ROLLBACK`
  * Explanation for each ACID property usage in context
  * Error scenarios and rollback simulations

---

## 📝 Summary

Today's dive into **Transactions and ACID** cemented the importance of **data integrity** in multi-step operations. Whether it's a financial transaction, an e-commerce order, or any system needing atomic consistency, this topic is a pillar of professional-grade SQL systems.

🔐 Key takeaways:

* **Transactions ensure "all or nothing" safety.**
* ACID compliance prevents corrupt or inconsistent states.
* Real-world systems like **banking**, **inventory**, and **booking platforms** rely heavily on transactional guarantees.

---

📅 Up next: **Day 22: Review + Practice Set** — I’ll consolidate learnings from previous topics and put them to test with a comprehensive challenge set.

Stay tuned — let’s solidify the fundamentals and sharpen the skills! 🧠🧩

Happy querying! 💾✨

---

# 📚 Day 24: `Library Management` — Building a Relational System for Books, Members & Transactions

Welcome to **Day 24** of my daily SQL learning journey!  
Today’s focus was on designing and querying a **Library Management System** — a classic and practical database model used across academic and public institutions.

This exercise sharpened my skills in **data modeling**, **foreign key relationships**, **real-world querying**, and **transaction tracking**.

---

## 🧠 Main Topics Covered

- 🗃️ Designing relational schemas for a library database
- 🔐 Establishing primary and foreign key constraints
- 🧑‍💼 Managing members and their issued books
- 📚 Tracking book inventory and availability
- ⏳ Handling issue and return dates
- 🚫 Preventing invalid data through relational integrity

---

## 📖 What I Learned

### 🧩 A Library System in SQL

A basic Library Management System can involve the following core tables:

- **books**: stores all book details
- **members**: tracks library users
- **transactions / issues**: logs who issued what and when

By defining **foreign key relationships**, we ensure that every book issued is valid and belongs to a registered member.

---

### 🔑 Key Concepts Practiced

- Creating schemas with proper **data types** and constraints
- Using **foreign keys** to relate:
  - `issued_to` → members
  - `book_id` → books
- Writing **JOIN queries** to fetch book + member info together
- Applying **aggregate functions** like `COUNT()` to get totals
- Using **NULLs** to represent books that haven’t been issued yet
- Using `ALTER TABLE` to enforce integrity between tables

---

## ❓ Example Practice Questions

Here are some meaningful queries I practiced today:

1. 📕 Retrieve a list of all books along with the member who currently has them issued.
2. 👤 Find all members who have issued more than 2 books.
3. 📈 Count the total number of books that are currently available in the library.

These queries reflect real-world reporting, inventory checks, and member activity tracking in a library setup.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table creation for `books`, `members`, and `issues`
  * Sample data insertions
  * Practice questions included as SQL comments

* `queries.sql` – Contains:

  * Query solutions to today's practice problems
  * Explanations for each solution
  * Suggestions for schema improvements and alternate queries

---

## 📝 Summary

Today’s project helped me model a **real-world relational system** and reinforced how to enforce integrity across multiple related tables. Working with library data offered a clear, structured scenario that mirrors real database usage in educational institutions and inventory systems.

Skills gained:

- Designing normalized schemas
- Writing JOIN-based reports
- Handling NULLs in foreign key columns
- Using COUNT and filters effectively

---

📅 Up next: **Day 25: E-Commerce Database** — I’ll dive into designing an online store database, working with products, customers, orders, and payments. This will take relational modeling to the next level with more complex relationships and analytics.

Stay tuned as I build toward more production-ready database systems!

Happy querying! 💻📘

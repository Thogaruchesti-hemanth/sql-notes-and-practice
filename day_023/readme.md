# 🏫 Day 23: `Student Database` — Building and Querying Educational Records

Welcome to **Day 23** of my daily SQL learning journey!  
Today’s session was focused on designing and querying a **Student Database** — a practical real-world example that helps understand how academic data is structured and retrieved in relational databases.

Working with educational data is a great way to practice relationships between students, courses, marks, and departments.

---

## 🧠 Main Topics Covered

- 🏗 Designing a student-centric relational database
- 🧾 Creating tables for students, departments, courses, marks, and subjects
- 🧮 Writing queries involving multiple tables and conditions
- 🔄 Aggregating data using `GROUP BY`, `AVG`, `MAX`, `MIN`
- 📌 Filtering and sorting based on academic performance
- 🔍 Applying `JOIN`s to derive meaningful insights (student grades, subject-wise performance, department-level summaries)

---

## 📖 What I Learned

### 🧩 Relational Database Design for Academic Systems

Today I created a **normalized schema** representing a small educational institute:

- **`students`** — basic student info
- **`departments`** — academic departments
- **`subjects`** — list of subjects linked to departments
- **`marks`** — students’ scores per subject

### 🔍 Key Concepts and Practices

- 📚 **One-to-many** relationships: One department has many students/subjects.
- 🧾 **Many-to-many** behavior via marks table: Students can appear in multiple subjects.
- 🎯 Used `INNER JOIN` to combine data across students, subjects, and marks.
- 📊 Applied `GROUP BY` and aggregate functions to compute average scores.
- 🪛 Added filters like “students scoring above 75” or “top scorer per subject”.

---

## ❓ Example Practice Questions

These were some of the practice questions I worked on today:

1. 🎓 List all students with their department names.
2. 🧠 Display each student's subject-wise marks with subject and department details.
3. 🏆 Find the student(s) with the highest average score in the entire database.

These questions simulate real academic reporting use-cases like result generation, department-level analysis, and identifying top performers.

---

## 📂 Files Included

- `data.sql` – Contains:
  * Table schemas for `students`, `departments`, `subjects`, and `marks`
  * Sample data to simulate a real-world educational dataset
  * Practice questions included as SQL comments for hands-on practice

- `queries.sql` – Contains:
  * Query solutions for all the practice questions
  * Commentary and query breakdowns for clarity
  * Performance tips and cleaner query patterns using table aliases

---

## 📝 Summary

Working on the **Student Database** helped reinforce my understanding of database design and relational querying. By modeling an academic structure, I got hands-on experience with:

- Realistic table relationships
- Academic performance reporting
- Multi-table joins and aggregations
- Structuring clean, modular queries

This exercise reflects real-world database usage in school/university ERP systems, student portals, and academic analytics dashboards.

---

📅 Up next: **Day 24: Library Management** — I’ll explore how to build and query a library system including books, members, loans, and overdue records.

Thanks for following along! 📘🎓📊

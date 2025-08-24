# 🏢 Day 26: `HR & Payroll System` — Managing Employee and Salary Data

Welcome to **Day 26** of my daily SQL learning journey!  
Today’s focus was on designing and querying a simplified **HR & Payroll System**, a critical use case in enterprise databases where we manage **employee records, salary details, and payroll history**.

Understanding this system equips you with real-world database modeling skills, especially useful in HRM software, payroll processing tools, and ERP platforms.

---

## 🧠 Main Topics Covered

- 👩‍💼 Employee information schema design
- 💰 Payroll schema: Salary structures, allowances, deductions
- 🧾 Maintaining salary history and payroll logs
- 🔗 Foreign key relationships between employees and payroll
- 📅 Generating payslips and salary summaries using SQL
- 🔍 Performing analytical queries (e.g., total salary, tax deductions)

---

## 📖 What I Learned

### 🔹 Designing a Relational HR & Payroll Schema

I practiced creating multiple related tables such as:

- `employees` — stores basic employee details  
- `pay_grades` — defines salary bands or grades  
- `payroll` — logs monthly payments including allowances and deductions  
- `departments` — optional table to group employees

This schema mimics real-world HRMS systems where normalized data ensures scalability and integrity.

---

### 🔹 Sample Queries & Use Cases

I explored writing queries to:

- 🧑‍💼 Retrieve all employees with their department and current pay grade
- 💸 Calculate monthly take-home salary (basic + allowances - deductions)
- 📈 Generate salary summaries per department
- 🗂 Track salary history of an employee over time

```sql
SELECT e.name, pg.grade_name, p.salary_month, 
       p.basic_salary + p.allowances - p.deductions AS net_salary
FROM employees e
JOIN pay_grades pg ON e.grade_id = pg.id
JOIN payroll p ON e.id = p.employee_id;
````

✅ This kind of query is essential for generating monthly salary reports or payslips.

---

## ❓ Example Practice Questions

Here are the real-world-style queries I practiced today:

1. 💼 List all employees with their current salary, allowances, and deductions.
2. 🏦 Show total salary expense per department for a given month.
3. 🕰️ Retrieve the payroll history of a specific employee, ordered by salary month.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schema for `employees`, `departments`, `pay_grades`, `payroll`
  * Sample data for realistic testing
  * Practice questions (embedded in comments)

* `queries.sql` – Contains:

  * SQL solutions with explanations for each question
  * Alternate query strategies using joins, aggregation, and filters
  * Salary calculations and formatting examples

---

## 📝 Summary

Today's focus on the **HR & Payroll System** helped me simulate how businesses manage **employee and payroll data** efficiently using SQL. This involved a mix of:

* Relational schema design
* JOIN operations across multiple tables
* Financial calculations (e.g., net salary, gross pay)
* Aggregations by department or time period

Such systems are vital in real-world HRMS, payroll processing apps, and organizational databases, and learning this equips me for backend reporting and data analysis roles.

---

📅 Up next: **Day 27: Hotel Booking System** — diving into relational queries for reservations, customers, rooms, and availability tracking.

Happy querying! 💼📊🧾

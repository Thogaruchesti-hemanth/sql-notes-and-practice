-- 📘 Day 26: HR & Payroll System
-- ------------------------------
-- Context: A company HR system tracking employees, their departments, salaries, bonuses, and other payroll details.
-- Today’s practice focuses on mastering SQL operations within a human resources domain — including filters,
-- aggregations, JOINs, subqueries, date functions, grouping, and salary analysis.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. payroll

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name             | gender | department       | position           | hire_date  | email                  |
-- |--------|------------------|--------|------------------|---------------------|------------|------------------------|
-- | 101    | Aditi Sharma     | F      | HR               | HR Manager          | 2019-06-15 | aditi@company.com      |
-- | 102    | Ravi Mehta       | M      | Finance          | Accountant          | 2020-01-10 | ravi@company.com       |
-- | 103    | Neha Singh       | F      | IT               | Software Engineer   | 2021-03-25 | neha.s@company.com     |
-- | 104    | Arjun Nair       | M      | IT               | DevOps Engineer     | 2018-08-30 | arjun@company.com      |
-- | 105    | Sneha Iyer       | F      | Marketing        | Marketing Executive | 2022-05-05 | sneha@company.com      |
-- | 106    | Mohan Das        | M      | Finance          | Senior Accountant   | 2017-11-01 | mohan@company.com      |
-- | 107    | Priya Kapoor     | F      | HR               | Recruiter           | 2023-01-20 | priya@company.com      |
-- | 108    | Aman Verma       | M      | IT               | Software Engineer   | 2021-09-10 | aman.verma@company.com |

-- ===================================================
-- Table: payroll
-- ===================================================
-- | payroll_id | emp_id | basic_salary | bonus   | deductions | net_salary | pay_date   |
-- |------------|--------|--------------|---------|------------|------------|------------|
-- | P001       | 101    | 80000        | 5000    | 2000       | 83000      | 2024-06-30 |
-- | P002       | 102    | 60000        | 3000    | 1000       | 62000      | 2024-06-30 |
-- | P003       | 103    | 75000        | 7000    | 2500       | 79500      | 2024-06-30 |
-- | P004       | 104    | 85000        | 9000    | 3000       | 91000      | 2024-06-30 |
-- | P005       | 105    | 50000        | 2000    | 1000       | 51000      | 2024-06-30 |
-- | P006       | 106    | 90000        | 10000   | 4000       | 96000      | 2024-06-30 |
-- | P007       | 107    | 55000        | 1500    | 500        | 56000      | 2024-06-30 |
-- | P008       | 108    | 75000        | 7000    | 2500       | 79500      | 2024-06-30 |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing queries involving payroll calculations, JOINs, grouping, filtering, and date functions

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basics & Filtering (Q1–Q10)
-- 1. List all employees working in the IT department.
-- 2. Find all female employees hired after '2020-01-01'.
-- 3. Retrieve the details of employees who have "Engineer" in their position.
-- 4. Get the employee names whose salary is greater than 80,000.
-- 5. Display payroll details for employees from the Finance department.
-- 6. Show the list of employees who received a bonus more than 5000.
-- 7. List employees with net salary less than 60,000.
-- 8. Show employee names and their email addresses whose name starts with 'A'.
-- 9. Find the employee hired most recently.
-- 10. List employees whose bonus is at least 10% of their basic salary.

-- 🔹 Aggregations & Grouping (Q11–Q20)
-- 11. Calculate the average basic salary of all employees.
-- 12. Find the highest bonus paid.
-- 13. Get the total net salary paid by department.
-- 14. Count how many employees work in each department.
-- 15. Calculate total deductions across all employees.
-- 16. Find the department with the highest average net salary.
-- 17. Get the sum of bonuses given to employees in the IT department.
-- 18. Calculate average net salary of male and female employees.
-- 19. Find how many employees earn more than the average net salary.
-- 20. Show department-wise minimum and maximum salary.

-- 🔹 JOINs & Combined Queries (Q21–Q28)
-- 21. Display employee name, department, and net salary.
-- 22. List all employees with their payroll info for June 2024.
-- 23. Show names of employees whose net salary is higher than their department’s average.
-- 24. Retrieve employee names and positions where deductions were more than 2000.
-- 25. Display employees and their salary details sorted by net salary descending.
-- 26. Show the payroll_id and name of employees who are in the HR department.
-- 27. Display the names of employees along with how long they’ve worked (in years).
-- 28. Show all employees who did not receive any bonus.

-- 🔹 Subqueries & Advanced Filtering (Q29–Q35)
-- 29. Find employees with the second highest net salary.
-- 30. List departments where the average basic salary exceeds 70,000.
-- 31. Display names of employees whose salary is above the overall average.
-- 32. Show employees who joined before the earliest payroll date.
-- 33. List employees who earn more than every employee in Marketing.
-- 34. Show the difference between basic salary and net salary for each employee.
-- 35. List employees hired in the same year as Aman Verma.

-- ✅ End of Day 26 Practice
-- Make sure to write queries that explore payroll analytics, employee insights, and HR filtering.
-- In the next session, we will build on this with **Hotel Booking Systems**.


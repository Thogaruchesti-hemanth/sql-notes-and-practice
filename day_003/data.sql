-- 📘 Day 3: IN, BETWEEN, LIKE, IS NULL
-- -----------------------------------
-- Context: Employees and the projects they are assigned to in a company.
-- Today’s practice focuses on using SQL filtering operators:
-- IN, BETWEEN, LIKE, and IS NULL — to search and match data efficiently.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. projects

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name         | department    | age | gender | email                  | phone_number |
-- |--------|--------------|---------------|-----|--------|------------------------|--------------|
-- | 101    | Alice Smith  | Engineering   | 29  | F      | alice@company.com      | 9876543210   |
-- | 102    | Bob Johnson  | Marketing     | 35  | M      | bob.j@company.com      | 9988776655   |
-- | 103    | Carol White  | Engineering   | 32  | F      | carolw@company.com     | NULL         |
-- | 104    | David Brown  | HR            | 41  | M      | NULL                   | 9123456789   |
-- | 105    | Eva Green    | Engineering   | 26  | F      | eva.g@company.com      | NULL         |
-- | 106    | Frank Ocean  | Sales         | 38  | M      | franko@company.com     | 9876512345   |
-- | 107    | Grace Lee    | Marketing     | 30  | F      | grace.lee@company.com  | 9999999999   |

-- ===================================================
-- Table: projects
-- ===================================================
-- | project_id | emp_id | project_name      | status     | budget  |
-- |------------|--------|-------------------|------------|---------|
-- | P001       | 101    | Apollo Redesign   | Completed  | 25000   |
-- | P002       | 103    | Sales Analytics   | In Progress| 40000   |
-- | P003       | 102    | Brand Campaign    | Completed  | 30000   |
-- | P004       | 105    | Backend Migration | Not Started| 0       |
-- | P005       | 104    | HR Portal Upgrade | NULL       | 15000   |
-- | P006       | 106    | CRM Integration   | In Progress| 22000   |
-- | P007       | 107    | Social Media Ops  | Completed  | 18000   |
-- | P008       | 101    | UI Revamp         | In Progress| 27000   |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `SELECT` queries using `IN`, `BETWEEN`, `LIKE`, and `IS NULL`

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 IN Operator (Q1–Q9)
-- 1. Select all employees in the 'Engineering' or 'Marketing' departments.
-- 2. Retrieve names of employees whose `emp_id` is IN (101, 103, 106).
-- 3. Get project names where `project_id` IN ('P002', 'P004', 'P007').
-- 4. List all employees whose gender is IN ('F').
-- 5. Get employees who belong to departments IN ('Sales', 'HR').
-- 6. Select all projects handled by employees IN (101, 105).
-- 7. Find all employees whose names are IN ('Bob Johnson', 'Grace Lee').
-- 8. Show employees with `emp_id` IN (999, 888, 101) – observe which are found.
-- 9. Select projects assigned to employees IN (103, 104, 106).

-- 🔹 BETWEEN Operator (Q10–Q19)
-- 10. Select employees aged BETWEEN 30 AND 40.
-- 11. Retrieve employees aged BETWEEN 26 AND 29.
-- 12. Find projects with budgets BETWEEN 20000 AND 30000.
-- 13. Show all employees whose `emp_id` is BETWEEN 102 AND 106.
-- 14. Get projects with `project_id` BETWEEN 'P002' AND 'P005'.
-- 15. List employees aged BETWEEN 35 AND 45.
-- 16. Select projects with budgets BETWEEN 0 AND 10000.
-- 17. Retrieve projects with budgets NOT BETWEEN 25000 AND 40000.
-- 18. Find employees aged BETWEEN 30 AND 30 (exact match).
-- 19. Find employees aged NOT BETWEEN 20 AND 30.

-- 🔹 LIKE Operator (Q20–Q27)
-- 20. Select employees whose name starts with 'A'.
-- 21. Get employees whose email contains the word 'company'.
-- 22. Retrieve employees whose name ends with 'n'.
-- 23. Show employees whose email starts with 'carol'.
-- 24. Find employees with names that have 'e' as the second letter.
-- 25. List employees whose email ends in '.com'.
-- 26. Find all projects where project_name contains the word 'Upgrade'.
-- 27. Select employees whose names contain double vowels (like 'ee').

-- 🔹 IS NULL and IS NOT NULL (Q28–Q35)
-- 28. Select employees whose `email` IS NULL.
-- 29. Retrieve employees whose `phone_number` IS NULL.
-- 30. Get employees whose phone number IS NOT NULL.
-- 31. List projects where status IS NULL.
-- 32. Show employees whose `email` IS NOT NULL.
-- 33. Find employees who have NULL phone numbers AND belong to Engineering.
-- 34. Find projects with NULL status OR 0 budget.
-- 35. Select employees whose email IS NULL OR phone_number IS NULL.

-- ✅ End of Day 3 Practice
-- Keep focusing on writing the SQL queries from scratch.
-- Next session will dive into advanced filtering and logical operators.

-- 📘 Day 11: FULL OUTER JOIN
-- --------------------------
-- Context: Company system managing employees and projects.
-- Today’s practice focuses on `FULL OUTER JOIN` — combining rows from two tables
-- whether or not they have matching values in the joined column.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. projects

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name             | department   | role              | joining_date |
-- |--------|------------------|--------------|-------------------|--------------|
-- | 101    | Aditi Sharma      | IT           | Developer         | 2021-06-15   |
-- | 102    | Rohan Mehta       | HR           | Recruiter         | 2022-01-20   |
-- | 103    | Sneha Verma       | Finance      | Analyst           | 2020-11-10   |
-- | 104    | Vikas Kapoor      | IT           | Tester            | 2023-02-05   |
-- | 105    | Priya Desai       | Marketing    | Executive         | 2021-08-30   |
-- | 106    | Aarav Malhotra    | Sales        | Manager           | 2022-12-01   |

-- ===================================================
-- Table: projects
-- ===================================================
-- | project_id | project_name           | assigned_to | start_date  | status     |
-- |------------|------------------------|-------------|-------------|------------|
-- | P001       | Website Redesign       | 101         | 2023-01-10  | In Progress|
-- | P002       | Recruitment Drive      | 102         | 2023-02-01  | Completed  |
-- | P003       | Financial Audit        | 103         | 2023-03-15  | In Progress|
-- | P004       | App Testing            | 104         | 2023-04-01  | Pending    |
-- | P005       | SEO Optimization       | NULL        | 2023-05-10  | Planned    |
-- | P006       | Sales Campaign         | 999         | 2023-06-01  | In Progress|

-- 🔍 Notes:
-- - `assigned_to` in `projects` refers to `emp_id` in `employees`.
-- - Not all employees are assigned to a project.
-- - Some projects have no assigned employee or have invalid references.

-- 📝 Instructions:
-- - Write SQL statements manually for:
--   - Creating the above tables (`CREATE TABLE`)
--   - Inserting the above data (`INSERT INTO`)
-- - Practice `FULL OUTER JOIN` scenarios using the below questions.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 FULL OUTER JOIN Basics (Q1–Q10)
-- 1. List all employees and their assigned projects, if any.
-- 2. Retrieve all projects and their corresponding employee names, even if unassigned.
-- 3. Display employee names and project names using FULL OUTER JOIN.
-- 4. Find all employee and project combinations where there is no match on either side.
-- 5. Show all project IDs along with the employee role, whether matched or not.
-- 6. Use FULL OUTER JOIN to list all records from both tables.
-- 7. Show employee ID, name, and assigned project name (if any).
-- 8. List project name, assigned_to, and corresponding employee department.
-- 9. Retrieve all employees and their project status (if assigned).
-- 10. List all unmatched employee and project records (where join fails).

-- 🔹 Filtering after FULL OUTER JOIN (Q11–Q20)
-- 11. Find all employees who are not assigned to any project.
-- 12. Find all projects that are not assigned to any employee.
-- 13. List employees along with projects where employee role is 'Developer'.
-- 14. Show all project names and assigned employee names where project status is 'In Progress'.
-- 15. Display only matched records using FULL OUTER JOIN and filter out NULLs.
-- 16. Show unmatched employee records where department is 'Sales'.
-- 17. Display unmatched projects where project status is 'Planned'.
-- 18. Show employee and project info where assigned_to > 103 or emp_id > 103.
-- 19. List all employees and their projects where project started after '2023-03-01'.
-- 20. Find employees without a project and hired before '2022-01-01'.

-- 🔹 FULL OUTER JOIN with Aliases and Expressions (Q21–Q28)
-- 21. Use table aliases to display employee name and project name.
-- 22. Show employee name along with project status using alias `e` for employees and `p` for projects.
-- 23. Display employee name and a custom column "is_assigned" as 'Yes' or 'No' using CASE.
-- 24. List all project names and a column showing 'Assigned' or 'Unassigned'.
-- 25. Show full name, project title, and status in uppercase.
-- 26. Add a new column 'valid_assignment' that is 'True' only when employee and project match.
-- 27. Display employee roles along with count of matched projects (use JOIN + aggregation).
-- 28. Show each project and whether the assigned employee exists in the employee table.

-- 🔹 Advanced Logic and Scenarios (Q29–Q35)
-- 29. Find projects with invalid employee assignments (assigned_to not found in employees).
-- 30. Identify employees assigned to multiple projects (based on project data).
-- 31. List employees and project details where role is 'Tester' or status is 'Pending'.
-- 32. Retrieve projects and employees where either joining_date or start_date is before '2023-01-01'.
-- 33. Use FULL OUTER JOIN to simulate a report of all task assignments, even incomplete ones.
-- 34. Show employees with no assigned project or assigned to a project that doesn't exist.
-- 35. Generate a report combining all employee-project data sorted by employee name.

-- ✅ End of Day 11 Practice
-- Remember: `FULL OUTER JOIN` is useful when you want to include **all rows** from both tables,
-- even if there is no match between them. Use `COALESCE` or `CASE` to handle NULLs for better readability.

-- 🔮 Tomorrow’s Topic: SELF JOIN
-- We will learn how to join a table with itself to represent relationships like managers and subordinates.

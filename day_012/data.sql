-- 📘 Day 12: SELF JOIN
-- ---------------------
-- Context: Corporate employee hierarchy where each employee may report to a manager.
-- The `employees` table includes information about employees and their reporting managers.
-- The `projects` table lists projects and their assigned employees.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. projects

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name            | designation      | manager_id | department   | salary   | join_date  |
-- |--------|------------------|------------------|------------|--------------|----------|------------|
-- | 101    | Aditi Sharma     | CEO              | NULL       | Executive    | 300000   | 2019-01-10 |
-- | 102    | Ramesh Kumar     | CTO              | 101        | Technology   | 220000   | 2020-02-15 |
-- | 103    | Sunita Mehra     | CFO              | 101        | Finance      | 210000   | 2020-03-20 |
-- | 104    | Vikram Patel     | Manager          | 102        | Technology   | 150000   | 2021-06-01 |
-- | 105    | Priya Iyer       | Manager          | 103        | Finance      | 150000   | 2021-07-01 |
-- | 106    | Rohit Verma      | Developer        | 104        | Technology   | 100000   | 2022-01-10 |
-- | 107    | Nisha Reddy      | Developer        | 104        | Technology   | 100000   | 2022-01-15 |
-- | 108    | Aarav Desai      | Analyst          | 105        | Finance      | 95000    | 2022-03-05 |
-- | 109    | Meera Singh      | Analyst          | 105        | Finance      | 95000    | 2022-03-10 |
-- | 110    | Karan Joshi      | Intern           | 106        | Technology   | 40000    | 2023-01-01 |

-- ===================================================
-- Table: projects
-- ===================================================
-- | project_id | project_name     | lead_emp_id | start_date  | status     |
-- |------------|------------------|-------------|-------------|------------|
-- | P001       | Project Alpha     | 104         | 2022-01-01  | Completed  |
-- | P002       | Project Beta      | 105         | 2022-02-15  | Completed  |
-- | P003       | Project Gamma     | 106         | 2022-06-01  | Ongoing    |
-- | P004       | Project Delta     | 107         | 2023-01-01  | Ongoing    |
-- | P005       | Project Zeta      | 108         | 2023-03-01  | Planned    |
-- | P006       | Project Sigma     | 109         | 2023-04-01  | Planned    |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `SELF JOIN` queries

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic Self Join Understanding (Q1–Q10)
-- 1. List all employees along with their manager names.
-- 2. Show the names of employees who do not report to anyone.
-- 3. Display each employee with their manager's designation.
-- 4. Find the department of each manager along with their team member names.
-- 5. List employees and their managers only if both are in the same department.
-- 6. Get all pairs of employees where one reports to the other.
-- 7. Show a list of employees whose managers joined before them.
-- 8. List employees who have the same designation as their managers.
-- 9. Display the reporting chain: employee → manager → manager’s manager.
-- 10. List all managers who manage more than 2 employees.

-- 🔹 Filtering and Aggregation with Self Join (Q11–Q20)
-- 11. Count how many employees each manager supervises.
-- 12. Find the average salary of team members under each manager.
-- 13. List managers with at least one direct report earning more than ₹90,000.
-- 14. Identify employees whose managers earn less than ₹200,000.
-- 15. List employees who joined after their manager’s join date.
-- 16. Show the max salary among team members for each manager.
-- 17. Get names of employees who are the only ones reporting to their manager.
-- 18. List employees whose managers are also managing someone in another department.
-- 19. Find all employees whose manager’s name starts with ‘P’.
-- 20. Count the number of interns each manager has under their team.

-- 🔹 Intermediate Self Join Scenarios (Q21–Q28)
-- 21. List all manager–employee pairs along with the project name they are associated with (if any).
-- 22. Display names of employees and their managers for projects that are currently 'Ongoing'.
-- 23. Show the total number of employees under each department head (top-most manager per department).
-- 24. Find manager–employee pairs where both are assigned to projects.
-- 25. Get a list of employees working under managers with the designation ‘Manager’.
-- 26. Identify managers who do not manage anyone.
-- 27. Show the list of all interns along with the manager under whom they work.
-- 28. Display employee–manager pairs who joined in the same year.

-- 🔹 Advanced Logical Self Join Use Cases (Q29–Q35)
-- 29. Show all employees who belong to a department where their manager does not.
-- 30. Find pairs of employees who share the same manager and work in the same department.
-- 31. List employees whose managers are also managing another manager.
-- 32. Get employee names whose managers are managing more than one project lead.
-- 33. Display all employees whose managers are not present in the employee list (simulate referential issue).
-- 34. Show employees who are both managing someone and reporting to someone else.
-- 35. Find employees whose salary is greater than their manager’s salary.

-- ✅ End of Day 12 Practice
-- Tomorrow’s Topic: UNION, INTERSECT, EXCEPT – Set-based operations in SQL

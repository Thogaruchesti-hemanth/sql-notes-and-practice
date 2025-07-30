-- 📘 Day 10: LEFT JOIN, RIGHT JOIN
-- --------------------------------
-- Context: A company wants to analyze employees and their assigned projects.
-- Today’s practice focuses on mastering LEFT JOIN and RIGHT JOIN operations to retrieve combined data.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. projects

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name             | department     | email                 | joining_date |
-- |--------|------------------|----------------|------------------------|--------------|
-- | 101    | Neha Reddy       | Engineering    | neha.reddy@mail.com    | 2022-05-12   |
-- | 102    | Aditya Mehra     | Sales          | aditya.m@mail.com      | 2021-11-30   |
-- | 103    | Kavya Sharma     | Engineering    | kavya.s@mail.com       | 2023-01-20   |
-- | 104    | Rohan Verma      | HR             | rohan.v@mail.com       | 2022-08-10   |
-- | 105    | Aarti Patel      | Engineering    | aarti.p@mail.com       | 2020-09-05   |
-- | 106    | Sameer Iqbal     | Marketing      | sameer.i@mail.com      | 2023-04-01   |
-- | 107    | Pooja Singh      | Sales          | pooja.s@mail.com       | 2021-07-18   |

-- ===================================================
-- Table: projects
-- ===================================================
-- | project_id | project_name           | assigned_to | status     | start_date  |
-- |------------|------------------------|-------------|------------|-------------|
-- | P001       | Mobile App Revamp      | 101         | Completed  | 2022-06-01  |
-- | P002       | Website Redesign       | 103         | Ongoing    | 2023-02-10  |
-- | P003       | Marketing Campaign A   | 106         | Completed  | 2023-04-15  |
-- | P004       | CRM Implementation     | 102         | Ongoing    | 2022-12-01  |
-- | P005       | New Product Launch     | NULL        | Planned    | 2023-08-01  |
-- | P006       | HR Automation          | 104         | Completed  | 2023-01-05  |
-- | P007       | Sales Dashboard        | NULL        | Planned    | 2023-09-01  |
-- | P008       | Backend Optimization   | 105         | Ongoing    | 2021-11-15  |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `LEFT JOIN` and `RIGHT JOIN` queries

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 LEFT JOIN Basics (Q1–Q10)
-- 1. Retrieve all employees along with their assigned project names.
-- 2. Get a list of all employees and their project status (if assigned).
-- 3. Show employee names and project names for all Engineering department employees (include those without projects).
-- 4. List all employees with their assigned project start dates.
-- 5. Retrieve employee details even if they are not assigned to any project.
-- 6. Get names of employees and their assigned project names, if any. Show NULL if not assigned.
-- 7. Show a list of all employees with their corresponding project status. Display 'Unassigned' if no project.
-- 8. Display a list of all employees along with project_id (if any).
-- 9. List all employees who joined after 2022 and their current projects (if assigned).
-- 10. Show each employee's name and the project they are assigned to, including those without projects.

-- 🔹 RIGHT JOIN Basics (Q11–Q20)
-- 11. Retrieve all projects along with the employee names they are assigned to.
-- 12. Show project name, status, and assigned employee email. Include unassigned projects.
-- 13. List all project details along with employee department (if assigned).
-- 14. Display project name and assigned employee name, including unassigned projects.
-- 15. Get all project records and their associated employee joining date.
-- 16. Show all projects and the assigned employee name, even if no employee is assigned.
-- 17. List project_id, project_name, and department of the assigned employee.
-- 18. Retrieve project names and names of employees, including projects with no assigned employees.
-- 19. Get all ongoing or planned projects with their assigned employee info (if any).
-- 20. Show all project names and emails of assigned employees. Include NULLs for unassigned.

-- 🔹 LEFT JOIN with Filters and Conditions (Q21–Q27)
-- 21. Retrieve employees from the Sales department and the projects they are working on.
-- 22. Get employees not assigned to any project.
-- 23. Show names of employees and their project names where the project is completed.
-- 24. List Engineering employees along with all their projects, if any.
-- 25. Show all employees and projects where the project started after 2023-01-01.
-- 26. Get employees who joined before 2022 and their assigned projects.
-- 27. Find all employees with no assigned project but who joined after January 2023.

-- 🔹 RIGHT JOIN with Filters and Conditions (Q28–Q32)
-- 28. Retrieve all planned projects and their assigned employee names.
-- 29. Show projects with NULL in `assigned_to`, and try to get employee name (should be NULL).
-- 30. Get all projects along with employee details where the project status is 'Ongoing'.
-- 31. List projects assigned to employees from the HR department.
-- 32. Get project names and names of employees for projects starting before 2023.

-- 🔹 Mixed JOIN Logic & Challenge Questions (Q33–Q35)
-- 33. List all employees and their projects (if any), and sort by joining_date.
-- 34. Show all projects with assigned employee names, but exclude completed projects.
-- 35. Retrieve all employees who don’t have a project, and all projects without employees (use LEFT + RIGHT JOIN logic creatively).

-- ✅ End of Day 10 Practice
-- Tomorrow we will learn: **Day 11: FULL OUTER JOIN**
-- Practice visualizing JOIN results with sample data for better understanding.

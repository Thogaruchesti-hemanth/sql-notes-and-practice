-- 📘 Day 9: INNER JOIN
-- ------------------------
-- Context: A company database tracking employees and their departments.
-- Today’s practice focuses on using `INNER JOIN` to combine related rows from two tables
-- based on a common column (usually a foreign key).

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. departments

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name            | department_id | designation       | salary   | join_date  |
-- |--------|------------------|----------------|--------------------|----------|------------|
-- | 101    | Aisha Mehra      | 1              | Software Engineer  | 70000.00 | 2022-03-15 |
-- | 102    | Rohit Singh      | 2              | Data Analyst       | 65000.00 | 2021-07-10 |
-- | 103    | Priya Verma      | 3              | HR Manager         | 72000.00 | 2019-11-01 |
-- | 104    | Sameer Khan      | 2              | Data Scientist     | 88000.00 | 2023-02-20 |
-- | 105    | Neha Joshi       | 4              | Marketing Lead     | 75000.00 | 2020-05-05 |
-- | 106    | Rahul Sharma     | NULL           | Intern             | 20000.00 | 2024-01-10 |
-- | 107    | Sneha Patil      | 1              | Backend Developer  | 67000.00 | 2022-08-30 |
-- | 108    | Karan Malhotra   | 5              | UX Designer        | 60000.00 | 2023-06-15 |

-- ===================================================
-- Table: departments
-- ===================================================
-- | dept_id | dept_name       | manager         | location      |
-- |---------|------------------|------------------|----------------|
-- | 1       | Engineering      | Deepak Sinha     | Mumbai         |
-- | 2       | Data Science     | Shweta Kapoor    | Bangalore      |
-- | 3       | Human Resources  | Anil Desai       | Delhi          |
-- | 4       | Marketing        | Sunita Rao       | Pune           |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `INNER JOIN` queries

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 INNER JOIN Basics (Q1–Q10)
-- 1. List all employees along with their department names.
-- 2. Show employee names, designations, and corresponding manager names.
-- 3. Retrieve names and salaries of all employees along with their department location.
-- 4. List the names of employees who have a department assigned.
-- 5. Display all departments with at least one employee.
-- 6. Show each department's name and total number of employees in it.
-- 7. Get a list of all employee names who work in the 'Engineering' department.
-- 8. Show employees who joined after 2022 along with their department names.
-- 9. Retrieve the department name and manager for employees earning more than 70000.
-- 10. List all employees along with their department manager and department location.

-- 🔹 INNER JOIN with Aliases and Filtering (Q11–Q20)
-- 11. Get employee and department details where the location is 'Bangalore'.
-- 12. Show employee names and their managers for the 'Data Science' department.
-- 13. List employees earning between 60000 and 80000 along with department names.
-- 14. Display department names where employees hold the designation 'Data Analyst'.
-- 15. List employee names, salaries, and department names where salary > 65000.
-- 16. Get all departments that have more than one employee.
-- 17. List all backend developers along with their department details.
-- 18. Retrieve employees who joined in 2023 along with department names and managers.
-- 19. Show employees and their departments where the manager’s name contains 'Sinha'.
-- 20. List all department names and locations where employees joined before 2021.

-- 🔹 INNER JOIN with Aggregate Functions (Q21–Q28)
-- 21. Find the average salary of employees per department.
-- 22. Show department-wise total salary expenditure.
-- 23. Count the number of employees in each department.
-- 24. List departments with average salary greater than 70000.
-- 25. Retrieve maximum and minimum salary in each department.
-- 26. List department names where total salary is more than 130000.
-- 27. Display departments where all employees earn above 60000.
-- 28. Find departments where at least one employee joined in 2022.

-- 🔹 Complex Conditions and Multiple Tables (Q29–Q35)
-- 29. Show employees who do not belong to 'Marketing' or 'HR'.
-- 30. List all employees whose department is in Delhi or Pune.
-- 31. Get department-wise highest paid employee names.
-- 32. Display department and employee names where employee designation contains 'Manager'.
-- 33. Show departments where none of the employees is an intern.
-- 34. List employees whose name starts with 'S' and their department information.
-- 35. Display departments and employees where the department name contains 'Data'.

-- ✅ End of Day 9 Practice
-- INNER JOIN helps you combine related records from two tables.
-- In the next session, we will explore:
-- 👉 **Day 10: LEFT JOIN, RIGHT JOIN**

-- 📘 Day 16: Correlated Subqueries
-- --------------------------------
-- Context: A company tracks employees, their departments, and salaries. 
-- Today’s practice focuses on **correlated subqueries** — subqueries that 
-- reference columns from the outer query and are executed row-by-row.

-- 👇 Below is the structure and sample data for two tables:
-- 1. departments
-- 2. employees

-- ===================================================
-- Table: departments
-- ===================================================
-- | dept_id | dept_name         | location       |
-- |---------|-------------------|----------------|
-- | 1       | Engineering        | Bengaluru      |
-- | 2       | Sales              | Mumbai         |
-- | 3       | Human Resources    | Delhi          |
-- | 4       | Marketing          | Hyderabad      |
-- | 5       | Finance            | Chennai        |

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name           | job_title        | salary   | dept_id | hire_date  |
-- |--------|----------------|------------------|----------|---------|------------|
-- | 101    | Aakash Mehra   | Software Eng     | 65000.00 | 1       | 2020-03-15 |
-- | 102    | Rina Desai     | Sales Exec       | 45000.00 | 2       | 2019-07-23 |
-- | 103    | Varun Shah     | HR Manager       | 55000.00 | 3       | 2018-11-05 |
-- | 104    | Priya Menon    | Data Analyst     | 72000.00 | 1       | 2021-02-18 |
-- | 105    | Amit Trivedi   | Sales Exec       | 50000.00 | 2       | 2022-06-11 |
-- | 106    | Sneha Reddy    | Recruiter        | 40000.00 | 3       | 2021-08-01 |
-- | 107    | Karan Verma    | Finance Analyst  | 60000.00 | 5       | 2020-12-30 |
-- | 108    | Meera Nair     | Marketing Lead   | 48000.00 | 4       | 2019-04-09 |
-- | 109    | Pooja Sharma   | Software Eng     | 68000.00 | 1       | 2023-01-15 |
-- | 110    | Suresh Iyer    | Sales Manager    | 53000.00 | 2       | 2017-09-05 |
-- | 111    | Anita Das      | HR Executive     | 42000.00 | 3       | 2022-12-22 |
-- | 112    | Rohit Sen      | Intern           | 30000.00 | 1       | 2024-02-01 |
-- | 113    | Deepak Rao     | Accountant       | 58000.00 | 5       | 2019-10-19 |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing correlated subqueries based on the scenarios below.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic Correlated Subqueries (Q1–Q10)
-- 1. Find names of employees whose salary is greater than the average salary of their department.
-- 2. List employees who are earning the highest salary in their respective department.
-- 3. Find employees hired after the most recently hired person in their own department.
-- 4. List departments where at least one employee earns more than ₹60,000.
-- 5. Display names of employees whose salary is less than any other employee in the same department.
-- 6. Find the names of employees whose salary equals the maximum salary in their department.
-- 7. Show all employees who are not the highest paid in their department.
-- 8. List departments where all employees earn more than ₹40,000.
-- 9. Find the names of employees who joined before anyone else in their department.
-- 10. Identify employees whose salary is less than the average salary of the entire company.

-- 🔹 Intermediate Correlated Subqueries (Q11–Q20)
-- 11. Find employees who earn more than the person hired just before them in their department.
-- 12. Display names of employees whose salary is above the median salary of their department.
-- 13. List employees who earn more than the manager (highest paid) of another department.
-- 14. Show departments where the highest-paid employee earns less than ₹70,000.
-- 15. Display all employees who joined within 100 days of the earliest joiner in their department.
-- 16. Find employees whose salary is above the average of all departments located in 'Mumbai' or 'Delhi'.
-- 17. List the departments with more than one employee whose salary is above ₹50,000.
-- 18. Find employees whose salary is greater than that of any HR Executive.
-- 19. Find names of employees who have the lowest salary in their department but joined recently.
-- 20. List employees who earn more than the average salary of departments other than their own.

-- 🔹 Advanced Correlated Subqueries (Q21–Q30)
-- 21. Find departments where the second highest salary is more than ₹60,000.
-- 22. List employees whose salary is higher than the salary of all employees in the 'Sales' department.
-- 23. Identify the top 2 earners in each department.
-- 24. Show departments where the lowest salary is less than ₹35,000.
-- 25. List employees who joined before the oldest employee in the 'Marketing' department.
-- 26. Find all employees whose salary is equal to the average salary of their department and they are not interns.
-- 27. Display employees who are earning more than any employee from the Finance department.
-- 28. List departments where the number of employees earning above average is at least 2.
-- 29. Find employees who are the only ones in their department earning above ₹65,000.
-- 30. Show names of employees who joined on the same date as someone else in the same department.

-- 🔹 Mixed Scenario Thinking (Q31–Q35)
-- 31. Identify all departments where no employee earns more than ₹60,000.
-- 32. List all employees who earn more than at least two other employees in their department.
-- 33. Find employees whose salary is closest to the average salary of their department.
-- 34. Show all departments where every employee earns below the company-wide average salary.
-- 35. List employees who are earning more than all employees hired after 2022 in their department.

-- ✅ End of Day 16 Practice
-- In the next session, we will explore conditional logic in SQL using
-- CASE, IF, and COALESCE functions for data transformation and evaluation.

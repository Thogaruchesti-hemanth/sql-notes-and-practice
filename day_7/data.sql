-- 📘 Day 7: Review + Practice Set
-- -------------------------------
-- Context: Company database managing employees and their departments.
-- Today’s focus is to **review and reinforce** all SQL topics learned from Day 1 to Day 6:
-- CREATE, INSERT, SELECT, WHERE, AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL,
-- ORDER BY, LIMIT, OFFSET, UPDATE, DELETE, DISTINCT, COUNT, MIN, MAX, AVG, SUM.

-- 👇 Below is the structure and sample data for two tables:
-- 1. departments
-- 2. employees

-- ===================================================
-- Table: departments
-- ===================================================
-- | dept_id | dept_name         | location     |
-- |---------|-------------------|--------------|
-- | 101     | Human Resources    | New York     |
-- | 102     | Finance            | London       |
-- | 103     | Engineering        | San Francisco|
-- | 104     | Marketing          | Chicago      |
-- | 105     | Sales              | Mumbai       |

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name            | dept_id | join_date  | salary   | email                  | age | bonus | active |
-- |--------|------------------|---------|------------|----------|------------------------|-----|-------|--------|
-- | 1      | Alice Johnson    | 101     | 2020-05-15 | 60000.00 | alice.j@mail.com       | 29  | 3000  | Yes    |
-- | 2      | Bob Smith        | 102     | 2019-11-20 | 72000.00 | bob.s@mail.com         | 34  | 5000  | Yes    |
-- | 3      | Clara Zhang      | 103     | 2021-06-01 | 85000.00 | clara.z@mail.com       | 31  | NULL  | Yes    |
-- | 4      | David Lee        | 103     | 2022-03-10 | 90000.00 | david.lee@mail.com     | 28  | 6000  | No     |
-- | 5      | Eva Martinez     | 104     | 2018-01-25 | 56000.00 | eva.m@mail.com         | 40  | 2000  | Yes    |
-- | 6      | Frank Wright     | 102     | 2023-02-15 | 67000.00 | frank.w@mail.com       | 26  | 2500  | Yes    |
-- | 7      | Grace Kim        | 105     | 2019-09-05 | 48000.00 | NULL                   | 30  | NULL  | Yes    |
-- | 8      | Henry Patel      | 105     | 2020-10-18 | 50000.00 | henry.p@mail.com       | 33  | 1000  | No     |
-- | 9      | Irene Gupta      | 104     | 2021-12-12 | 62000.00 | irene.g@mail.com       | 27  | 3000  | Yes    |
-- | 10     | Jack Thompson    | 101     | 2022-08-22 | 61000.00 | jack.t@mail.com        | 32  | NULL  | Yes    |

-- 📝 Instructions:
-- Use the structure above to manually write SQL queries using topics from Day 1 to Day 6.
-- Practice SELECT queries, conditions, sorting, updates, deletions, and aggregate functions.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Day 1: SELECT Basics
-- 1. Retrieve all data from the employees table.
-- 2. Show only name and salary of all employees.
-- 3. List all department names from the departments table.

-- 🔹 Day 2: WHERE, AND, OR, NOT
-- 4. Find employees who are in department 102 and have salary above 65000.
-- 5. List employees who are NOT active.
-- 6. Show employees whose age is greater than 30 OR salary is above 70000.
-- 7. Find employees who are not in department 103.

-- 🔹 Day 3: IN, BETWEEN, LIKE, IS NULL
-- 8. List employees in departments 101, 102, or 105 using IN.
-- 9. Find employees whose salary is between 60000 and 80000.
-- 10. Get employees whose name starts with 'A'.
-- 11. Show employees with NULL bonus.
-- 12. Find employees with emails ending in '@mail.com'.

-- 🔹 Day 4: ORDER BY, LIMIT, OFFSET
-- 13. List all employees ordered by salary descending.
-- 14. Show the top 3 highest-paid employees.
-- 15. Skip the first 2 employees and show the next 3 based on salary descending.

-- 🔹 Day 5: UPDATE, DELETE
-- 16. Update Grace Kim's email to 'grace.k@mail.com'.
-- 17. Set bonus to 5000 for all employees in department 102.
-- 18. Change all NULL bonus values to 0.
-- 19. Delete employee named 'Henry Patel'.
-- 20. Delete all employees with salary less than 50000.

-- 🔹 Day 6: DISTINCT, COUNT, MIN, MAX, AVG, SUM
-- 21. Find total number of active employees.
-- 22. What is the highest salary in the company?
-- 23. What is the average age of employees?
-- 24. Count how many departments are in the table.
-- 25. Show total salary paid to employees in department 103.
-- 26. List all unique department IDs from employees.

-- 🔹 Mixed Practice
-- 27. Get names and departments of all employees who joined after '2020-01-01'.
-- 28. List all employees who are active and have a bonus.
-- 29. Show departments that do not have any employees assigned.
-- 30. Find the employee with the earliest join_date.
-- 31. Which department has the most employees? *(Use COUNT with GROUP BY in Day 8)*
-- 32. What is the total bonus paid across all departments?
-- 33. List names of employees who have NULL in either email or bonus.
-- 34. Find employees who are younger than 30 and earn more than 60000.
-- 35. Show employee names and their bonus, but display 'No Bonus' where it is NULL.

-- ✅ End of Day 7 Practice
-- Tomorrow: Dive into **Day 8: GROUP BY, HAVING**
-- You'll learn to aggregate data by groups, apply filters to grouped results,
-- and answer questions like: "Which department has the highest average salary?"

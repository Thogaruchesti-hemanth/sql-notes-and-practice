-- 📘 Day 18: Views
-- ------------------------
-- Context: Company system storing employee records and departments.
-- Today’s practice focuses on creating and using SQL VIEWS
-- — virtual tables that simplify complex queries and enhance data security.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. departments

-- ===================================================
-- Table: employees
-- ===================================================
-- | emp_id | name           | salary   | hire_date  | dept_id | job_title       | manager_id |
-- |--------|----------------|----------|------------|---------|------------------|------------|
-- | 101    | Priya Mehta    | 70000.00 | 2019-03-15 | 1       | Software Eng     | 201        |
-- | 102    | Rohan Singh    | 85000.00 | 2018-06-22 | 2       | Data Scientist   | 202        |
-- | 103    | Anjali Kumar   | 62000.00 | 2020-11-10 | 1       | QA Engineer      | 201        |
-- | 104    | Neeraj Sharma  | 90000.00 | 2017-02-05 | 3       | Product Manager  | NULL       |
-- | 105    | Ayesha Khan    | 75000.00 | 2021-01-20 | 2       | ML Engineer      | 202        |
-- | 106    | Manish Verma   | 56000.00 | 2022-08-12 | 1       | UI Designer      | 201        |
-- | 201    | Kavita Joshi   | 110000.00| 2015-07-01 | 1       | Team Lead        | NULL       |
-- | 202    | Tarun Desai    | 115000.00| 2014-05-16 | 2       | Team Lead        | NULL       |

-- ===================================================
-- Table: departments
-- ===================================================
-- | dept_id | dept_name     | location      |
-- |---------|---------------|---------------|
-- | 1       | Engineering   | Bengaluru     |
-- | 2       | Data Science  | Hyderabad     |
-- | 3       | Product       | Mumbai        |
-- | 4       | HR            | Pune          |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `VIEW` creation, modification, and usage

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 View Creation & Simple SELECT (Q1–Q10)
-- 1. Create a view `engineering_employees` showing all employees from the Engineering department.
-- 2. Create a view `high_salary_employees` that lists employees earning more than ₹80,000.
-- 3. Create a view `employee_basic_info` with just name, job_title, and department id.
-- 4. Create a view `department_summary` showing dept_id, dept_name, and total number of employees.
-- 5. Create a view `manager_list` that includes all employees who are managers (i.e., are referenced as manager_id).
-- 6. Create a view `employees_with_location` joining employee names with their department’s location.
-- 7. Create a view `recent_joins` showing employees hired after January 1st, 2021.
-- 8. Create a view `ui_designers` that only includes employees whose job title contains “Designer”.
-- 9. Create a view `without_manager` showing employees who don’t have a manager.
-- 10. Create a view `ds_team` listing all employees from Data Science department with their manager name.

-- 🔹 Using Views in SELECT (Q11–Q20)
-- 11. Query the `high_salary_employees` view to get only job titles.
-- 12. Count how many employees are present in the `engineering_employees` view.
-- 13. Select all departments where there are employees earning above ₹70,000 using a view.
-- 14. Display the hire dates of all employees in the `recent_joins` view.
-- 15. List the names of all UI Designers using the `ui_designers` view.
-- 16. Find employees from the `employee_basic_info` view who work in department 2.
-- 17. From the `employees_with_location` view, list all employees located in Hyderabad.
-- 18. Count how many employees don’t have managers using the `without_manager` view.
-- 19. Query the `ds_team` view to find all ML Engineers and their managers.
-- 20. List all views that return more than 3 rows.

-- 🔹 Updating Through Views (Q21–Q28)
-- 21. Update the salary of an employee using the `high_salary_employees` view.
-- 22. Try updating the `dept_id` of an employee using the `employee_basic_info` view. What happens?
-- 23. Change job_title of 'Rohan Singh' using a suitable view.
-- 24. Set manager_id to 202 for all employees in the `ds_team` view.
-- 25. Update the hire_date of 'Manish Verma' using the `recent_joins` view.
-- 26. Modify the location of a department from the `employees_with_location` view (Should it work? Why or why not?).
-- 27. Try inserting a new row into the `engineering_employees` view. What happens?
-- 28. Delete a record using a view. Which views allow this and why?

-- 🔹 Advanced & Nested Views (Q29–Q35)
-- 29. Create a nested view `lead_designers` from `ui_designers` showing only employees reporting to manager_id 201.
-- 30. Create a view that summarizes the average salary for each department.
-- 31. Create a view that includes employee names and the number of people they manage.
-- 32. Create a view `senior_employees` showing employees with more than 5 years in the company.
-- 33. Create a view to identify which departments have no employees.
-- 34. Create a view to show departments where the average salary is greater than ₹85,000.
-- 35. Drop the view `without_manager`.

-- ✅ End of Day 18 Practice
-- Use views to simplify data access and security. Remember: Not all views are updatable.
-- In the next session, we will begin exploring performance tools like:
-- 📌 **Day 19: Indexes (Intro)**

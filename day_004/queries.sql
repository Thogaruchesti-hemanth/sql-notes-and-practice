-- 📘 Day 4: ORDER BY, LIMIT, OFFSET
-- ----------------------------------------
-- Context: Employees in a company and their salary records
-- Today, we are exploring how to sort data (`ORDER BY`), control the number of returned rows (`LIMIT`),
-- and skip specific records (`OFFSET`). These techniques are essential for building reports,
-- pagination systems, and ranking lists.

-- ===================================================
-- ✅ SCHEMA: Create Tables
-- ===================================================

-- Q1. Create the employees table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  department VARCHAR(100) NOT NULL,
  hire_date DATE NOT NULL
);

-- Q2. Create the salaries table
CREATE TABLE salaries (
  salary_id INT PRIMARY KEY,
  emp_id INT NOT NULL,
  amount INT NOT NULL,
  effective_date DATE NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- Q3. Insert sample data into employees
INSERT INTO employees (emp_id, name, department, hire_date) VALUES
(1, 'Alice Smith', 'Engineering', '2019-03-10'),
(2, 'Bob Jones', 'Marketing', '2020-06-15'),
(3, 'Carol White', 'HR', '2018-01-25'),
(4, 'David Black', 'Engineering', '2021-10-01'),
(5, 'Emma Green', 'Sales', '2019-12-05'),
(6, 'Frank Brown', 'Marketing', '2022-02-17'),
(7, 'Grace Lewis', 'Engineering', '2020-08-22'),
(8, 'Henry Adams', 'HR', '2023-04-30'),
(9, 'Irene Scott', 'Sales', '2021-05-20'),
(10, 'Jack Turner', 'Sales', '2022-11-03');

-- Q4. Insert sample data into salaries
INSERT INTO salaries (salary_id, emp_id, amount, effective_date) VALUES
(101, 1, 80000, '2023-01-01'),
(102, 2, 62000, '2023-01-01'),
(103, 3, 57000, '2023-01-01'),
(104, 4, 75000, '2023-01-01'),
(105, 5, 68000, '2023-01-01'),
(106, 6, 64000, '2023-01-01'),
(107, 7, 77000, '2023-01-01'),
(108, 8, 55000, '2023-01-01'),
(109, 9, 66000, '2023-01-01'),
(110, 10, 60000, '2023-01-01');

-- ===================================================
-- 🔹 ORDER BY (Q1–Q15)
-- ===================================================

-- Q1. List all employees sorted by name alphabetically.
SELECT * FROM employees ORDER BY name ASC;
-- Explanation: Sorts all employees in A-Z order by name.

-- Q2. List all employees sorted by department name in ascending order.
SELECT * FROM employees ORDER BY department ASC;
-- Explanation: Sorts employees based on department names alphabetically.

-- Q3. Show all salary records ordered by amount from highest to lowest.
SELECT * FROM salaries ORDER BY amount DESC;
-- Explanation: Sorts salary records in descending order based on amount.

-- Q4. Display employees ordered by hire date from the most recent to the oldest.
SELECT * FROM employees ORDER BY hire_date DESC;
-- Explanation: Newest hires appear first.

-- Q5. Sort employees by department (A–Z), then by name (A–Z) within each department.
SELECT * FROM employees ORDER BY department ASC, name ASC;
-- Explanation: Multi-level sorting – primary by department, secondary by name.

-- Q6. Sort employees by hire date and show only their names and hire dates.
SELECT name, hire_date FROM employees ORDER BY hire_date ASC;
-- Explanation: Earliest hires appear first, only showing relevant columns.

-- Q7. Show employee names in reverse alphabetical order.
SELECT name FROM employees ORDER BY name DESC;
-- Explanation: Sorts names Z–A.

-- Q8. List salaries in ascending order of amount, and show associated emp_id.
SELECT emp_id, amount FROM salaries ORDER BY amount ASC;
-- Explanation: Lowest salaries appear first.

-- Q9. Retrieve employee names ordered by the length of their names (shortest to longest).
SELECT name FROM employees ORDER BY LENGTH(name) ASC;
-- Explanation: Uses LENGTH() to sort by string length.

-- Q10. Order employees by department descending, then hire date ascending.
SELECT * FROM employees ORDER BY department DESC, hire_date ASC;
-- Explanation: Department Z–A, then older hire dates come first within each department.

-- Q11. Display employee records sorted by the number of characters in department name.
SELECT * FROM employees ORDER BY LENGTH(department);
-- Explanation: Uses LENGTH() to sort departments by character count.

-- Q12. Show the employee(s) with the earliest hire date.
SELECT * FROM employees ORDER BY hire_date ASC LIMIT 1;
-- Explanation: LIMIT 1 returns the top record with oldest hire date.

-- Q13. List employees from the ‘Engineering’ department, sorted by hire_date.
SELECT * FROM employees WHERE department = 'Engineering' ORDER BY hire_date ASC;
-- Explanation: Filters Engineering staff, ordered by date of joining.

-- Q14. Display all salary records ordered by effective_date (newest first).
SELECT * FROM salaries ORDER BY effective_date DESC;
-- Explanation: Most recent effective salary records shown first.

-- Q15. Sort the list of employee names and departments by department then name.
SELECT name, department FROM employees ORDER BY department ASC, name ASC;
-- Explanation: Clean view grouped by department and alphabetically within each.

-- ===================================================
-- 🔹 LIMIT (Q16–Q25)
-- ===================================================

-- Q16. Retrieve only the first 5 employees.
SELECT * FROM employees LIMIT 5;
-- Explanation: Fetches only the first five rows.

-- Q17. Display the top 3 highest-paid employees using LIMIT.
SELECT * FROM salaries ORDER BY amount DESC LIMIT 3;
-- Explanation: Top 3 salary earners sorted in descending order.

-- Q18. Get the first 4 salaries sorted by amount ascending.
SELECT * FROM salaries ORDER BY amount ASC LIMIT 4;
-- Explanation: Bottom 4 salary records.

-- Q19. List the top 2 most recently hired employees.
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 2;
-- Explanation: LIMIT returns two newest employees.

-- Q20. Show the names of the first 3 employees in alphabetical order.
SELECT name FROM employees ORDER BY name ASC LIMIT 3;
-- Explanation: Alphabetical sort + LIMIT.

-- Q21. Retrieve only one row from the employees table.
SELECT * FROM employees LIMIT 1;
-- Explanation: Basic one-record limit.

-- Q22. Display the latest 5 hires based on hire_date.
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 5;
-- Explanation: Recently hired list.

-- Q23. Show top 5 employees with the lowest salaries.
SELECT * FROM salaries ORDER BY amount ASC LIMIT 5;
-- Explanation: Employees earning the least.

-- Q24. List the departments of the first 6 employees alphabetically.
SELECT department FROM employees ORDER BY name ASC LIMIT 6;
-- Explanation: Based on name sort, returns departments.

-- Q25. Limit the result to 7 employees, sorted by name.
SELECT * FROM employees ORDER BY name ASC LIMIT 7;
-- Explanation: Ordered list with top 7 names.

-- ===================================================
-- 🔹 OFFSET (Q26–Q35)
-- ===================================================

-- Q26. Skip the first 3 employees and show the next 5 (ordered by hire_date).
SELECT * FROM employees ORDER BY hire_date ASC LIMIT 5 OFFSET 3;
-- Explanation: Useful for paginating data.

-- Q27. Show employees ranked 6th to 10th by salary amount (highest to lowest).
SELECT * FROM salaries ORDER BY amount DESC LIMIT 5 OFFSET 5;
-- Explanation: Skips top 5 salaries, shows next 5.

-- Q28. Display the 4th employee based on alphabetical order of names.
SELECT * FROM employees ORDER BY name ASC LIMIT 1 OFFSET 3;
-- Explanation: Offset 3 fetches 4th record.

-- Q29. Show the 6th to 10th most recently hired employees.
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 5 OFFSET 5;
-- Explanation: Useful for dashboard-style recent hire feeds.

-- Q30. Skip the first 2 salary records and show the next 4 (ordered by amount).
SELECT * FROM salaries ORDER BY amount ASC LIMIT 4 OFFSET 2;
-- Explanation: Slices sorted salary data.

-- Q31. Retrieve employees ranked from 3rd to 7th by salary (descending).
SELECT e.* FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
ORDER BY s.amount DESC LIMIT 5 OFFSET 2;
-- Explanation: Join to get employee info, skip top 2 earners.

-- Q32. Show only the 10th record from the employees table based on hire date.
SELECT * FROM employees ORDER BY hire_date ASC LIMIT 1 OFFSET 9;
-- Explanation: Index-based retrieval.

-- Q33. Display employee names from position 5 to 8 alphabetically.
SELECT name FROM employees ORDER BY name ASC LIMIT 4 OFFSET 4;
-- Explanation: Names 5 to 8 in A–Z order.

-- Q34. Retrieve 5 salaries starting from the 3rd highest (using OFFSET).
SELECT * FROM salaries ORDER BY amount DESC LIMIT 5 OFFSET 2;
-- Explanation: Starts at 3rd highest.

-- Q35. Get 3 employees from Engineering, skipping the first 2 (ordered by name).
SELECT * FROM employees
WHERE department = 'Engineering'
ORDER BY name ASC LIMIT 3 OFFSET 2;
-- Explanation: Filters Engineering dept, skips first 2 alphabetically.

-- ✅ End of Day 4 Practice
-- Today’s focus was all about sorting, limiting, and paginating data efficiently.
-- These are critical for building real-world applications such as dashboards, reports, and APIs.
-- Next: Master `UPDATE` and `DELETE` operations to modify existing records.

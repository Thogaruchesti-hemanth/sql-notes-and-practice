-- 📘 Day 7: Review + Practice Set
-- ----------------------------------------
-- Context: Company database managing employees and their departments.
-- Focus: Review all SQL basics from Day 1 to Day 6 using SELECT, WHERE, AND/OR/NOT, LIKE,
-- IS NULL, ORDER BY, LIMIT, OFFSET, UPDATE, DELETE, DISTINCT, COUNT, MIN, MAX, AVG, SUM.

-- ===================================================
-- ✅ SCHEMA: Create Tables and Sample Data
-- ===================================================

-- Create departments table
CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL
);

-- Insert sample departments
INSERT INTO departments (dept_id, dept_name, location) VALUES
(101, 'Human Resources', 'New York'),
(102, 'Finance', 'London'),
(103, 'Engineering', 'San Francisco'),
(104, 'Marketing', 'Chicago'),
(105, 'Sales', 'Mumbai');

-- Create employees table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  dept_id INT NOT NULL,
  join_date DATE,
  salary DECIMAL(10,2) NOT NULL,
  email VARCHAR(255) UNIQUE,
  age INT NOT NULL,
  bonus INT,
  active ENUM('Yes', 'No'),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert sample employees
INSERT INTO employees (emp_id, name, dept_id, join_date, salary, email, age, bonus, active) VALUES
(1, 'Alice Johnson', 101, '2020-05-15', 60000.00, 'alice.j@mail.com', 29, 3000, 'Yes'),
(2, 'Bob Smith', 102, '2019-11-20', 72000.00, 'bob.s@mail.com', 34, 5000, 'Yes'),
(3, 'Clara Zhang', 103, '2021-06-01', 85000.00, 'clara.z@mail.com', 31, NULL, 'Yes'),
(4, 'David Lee', 103, '2022-03-10', 90000.00, 'david.lee@mail.com', 28, 6000, 'No'),
(5, 'Eva Martinez', 104, '2018-01-25', 56000.00, 'eva.m@mail.com', 40, 2000, 'Yes'),
(6, 'Frank Wright', 102, '2023-02-15', 67000.00, 'frank.w@mail.com', 26, 2500, 'Yes'),
(7, 'Grace Kim', 105, '2019-09-05', 48000.00, NULL, 30, NULL, 'Yes'),
(8, 'Henry Patel', 105, '2020-10-18', 50000.00, 'henry.p@mail.com', 33, 1000, 'No'),
(9, 'Irene Gupta', 104, '2021-12-12', 62000.00, 'irene.g@mail.com', 27, 3000, 'Yes'),
(10, 'Jack Thompson', 101, '2022-08-22', 61000.00, 'jack.t@mail.com', 32, NULL, 'Yes');

-- ===================================================
-- 🔹 SELECT Basics
-- ===================================================

-- Q1. Retrieve all data from the employees table
SELECT * FROM employees;
-- Explanation: Fetches all columns for every employee record.

-- Q2. Show only name and salary of all employees
SELECT name, salary FROM employees;
-- Explanation: Projects only the name and salary columns.

-- Q3. List all department names from the departments table
SELECT dept_name FROM departments;
-- Explanation: Retrieves only the department names.

-- ===================================================
-- 🔹 WHERE, AND, OR, NOT
-- ===================================================

-- Q4. Find employees who are in department 102 and have salary above 65000
SELECT name FROM employees WHERE dept_id = 102 AND salary > 65000;
-- Explanation: Filters employees with dept_id 102 and salary greater than 65000.

-- Q5. List employees who are NOT active
SELECT name FROM employees WHERE active = 'No';
-- Explanation: Finds employees where active status is 'No'.

-- Q6. Show employees whose age is greater than 30 OR salary is above 70000
SELECT name FROM employees WHERE age > 30 OR salary > 70000;
-- Explanation: Uses OR to match either condition.

-- Q7. Find employees who are not in department 103
SELECT * FROM employees WHERE dept_id != 103;
-- Explanation: Excludes employees from department 103.

-- ===================================================
-- 🔹 IN, BETWEEN, LIKE, IS NULL
-- ===================================================

-- Q8. List employees in departments 101, 102, or 105 using IN
SELECT * FROM employees WHERE dept_id IN (101, 102, 105);
-- Explanation: Uses IN to match multiple dept_ids.

-- Q9. Find employees whose salary is between 60000 and 80000
SELECT * FROM employees WHERE salary BETWEEN 60000 AND 80000;
-- Explanation: Uses BETWEEN for range-based filtering.

-- Q10. Get employees whose name starts with 'A'
SELECT * FROM employees WHERE name LIKE 'A%';
-- Explanation: Finds names beginning with 'A'.

-- Q11. Show employees with NULL bonus
SELECT * FROM employees WHERE bonus IS NULL;
-- Explanation: Filters rows where bonus is not assigned.

-- Q12. Find employees with emails ending in '@mail.com'
SELECT * FROM employees WHERE email LIKE '%@mail.com';
-- Explanation: Pattern matches emails ending with @mail.com.

-- ===================================================
-- 🔹 ORDER BY, LIMIT, OFFSET
-- ===================================================

-- Q13. List all employees ordered by salary descending
SELECT * FROM employees ORDER BY salary DESC;
-- Explanation: Sorts employees from highest to lowest salary.

-- Q14. Show the top 3 highest-paid employees
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
-- Explanation: Limits the result to 3 highest-paid entries.

-- Q15. Skip the first 2 employees and show the next 3 based on salary descending
SELECT * FROM employees ORDER BY salary DESC LIMIT 3 OFFSET 2;
-- Explanation: Skips 2 records, then returns the next 3.

-- ===================================================
-- 🔹 UPDATE, DELETE
-- ===================================================

-- Q16. Update Grace Kim's email to 'grace.k@mail.com'
UPDATE employees SET email = 'grace.k@mail.com' WHERE name = 'Grace Kim';
-- Explanation: Modifies Grace Kim’s email address.

-- Q17. Set bonus to 5000 for all employees in department 102
UPDATE employees SET bonus = 5000 WHERE dept_id = 102;
-- Explanation: Assigns uniform bonus for department 102.

-- Q18. Change all NULL bonus values to 0
UPDATE employees SET bonus = 0 WHERE bonus IS NULL;
-- Explanation: Fills missing bonus values with 0.

-- Q19. Delete employee named 'Henry Patel'
DELETE FROM employees WHERE name = 'Henry Patel';
-- Explanation: Removes employee record matching name.

-- Q20. Delete all employees with salary less than 50000
DELETE FROM employees WHERE salary < 50000;
-- Explanation: Cleans out low-salary employee records.

-- ===================================================
-- 🔹 DISTINCT, COUNT, MIN, MAX, AVG, SUM
-- ===================================================

-- Q21. Find total number of active employees
SELECT COUNT(*) AS total_active FROM employees WHERE active = 'Yes';
-- Explanation: Counts records where active is 'Yes'.

-- Q22. What is the highest salary in the company?
SELECT MAX(salary) AS max_salary FROM employees;
-- Explanation: Finds maximum salary across all rows.

-- Q23. What is the average age of employees?
SELECT AVG(age) AS avg_age FROM employees;
-- Explanation: Returns mean age value.

-- Q24. Count how many departments are in the table
SELECT COUNT(*) AS department_count FROM departments;
-- Explanation: Total number of department entries.

-- Q25. Show total salary paid to employees in department 103
SELECT SUM(salary) AS total_salary FROM employees WHERE dept_id = 103;
-- Explanation: Aggregates salaries filtered by dept_id.

-- Q26. List all unique department IDs from employees
SELECT DISTINCT dept_id FROM employees;
-- Explanation: Lists unique dept_ids across employee rows.

-- ===================================================
-- 🔹 Mixed Practice
-- ===================================================

-- Q27. Get names and departments of all employees who joined after '2020-01-01'
SELECT e.name, d.dept_name FROM employees e JOIN departments d ON e.dept_id = d.dept_id
WHERE e.join_date > '2020-01-01';
-- Explanation: Joins and filters on join_date condition.

-- Q28. List all employees who are active and have a bonus
SELECT * FROM employees WHERE active = 'Yes' AND bonus IS NOT NULL AND bonus > 0;
-- Explanation: Filters active employees with non-null, positive bonus.

-- Q29. Show departments that do not have any employees assigned
SELECT d.dept_name FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;
-- Explanation: Uses LEFT JOIN and NULL check to find unassigned departments.

-- Q30. Find the employee with the earliest join_date
SELECT name FROM employees WHERE join_date = (SELECT MIN(join_date) FROM employees);
-- Explanation: Nested query to get earliest joiner.

-- Q31. Which department has the most employees?
SELECT dept_id, COUNT(*) AS total_employees FROM employees GROUP BY dept_id
ORDER BY total_employees DESC LIMIT 1;
-- Explanation: Uses GROUP BY and ORDER BY to find top count.

-- Q32. What is the total bonus paid across all departments?
SELECT SUM(bonus) AS total_bonus FROM employees;
-- Explanation: Adds up all bonus values.

-- Q33. List names of employees who have NULL in either email or bonus
SELECT name FROM employees WHERE email IS NULL OR bonus IS NULL;
-- Explanation: Identifies incomplete profiles.

-- Q34. Find employees who are younger than 30 and earn more than 60000
SELECT * FROM employees WHERE age < 30 AND salary > 60000;
-- Explanation: Filters based on two conditions.

-- Q35. Show employee names and their bonus, but display 'No Bonus' where it is NULL
SELECT name, COALESCE(CAST(bonus AS CHAR), 'No Bonus') AS bonus FROM employees;
-- Explanation: Replaces NULL values using COALESCE.

-- ✅ End of Day 7 Practice
-- Up next: Day 8 - GROUP BY and HAVING

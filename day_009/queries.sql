-- 📘 Day 9: INNER JOIN
-- ----------------------------------------
-- Context: A company database tracking employees and their departments.
-- Focus: Using INNER JOIN to combine related rows from two tables based on a common column.

-- ===================================================
-- ✅ SCHEMA: Create Tables and Sample Data
-- ===================================================

-- Create employees table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  department_id INT,
  designation VARCHAR(255),
  salary DECIMAL(10,2),
  join_date DATE
);

-- Insert sample employees
INSERT INTO employees (emp_id, name, department_id, designation, salary, join_date) VALUES
(101, 'Aisha Mehra', 1, 'Software Engineer', 70000.00, '2022-03-15'),
(102, 'Rohit Singh', 2, 'Data Analyst', 65000.00, '2021-07-10'),
(103, 'Priya Verma', 3, 'HR Manager', 72000.00, '2019-11-01'),
(104, 'Sameer Khan', 2, 'Data Scientist', 88000.00, '2023-02-20'),
(105, 'Neha Joshi', 4, 'Marketing Lead', 75000.00, '2020-05-05'),
(106, 'Rahul Sharma', NULL, 'Intern', 20000.00, '2024-01-10'),
(107, 'Sneha Patil', 1, 'Backend Developer', 67000.00, '2022-08-30'),
(108, 'Karan Malhotra', 5, 'UX Designer', 60000.00, '2023-06-15');

-- Create departments table
CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(255),
  manager VARCHAR(255),
  location VARCHAR(255)
);

-- Insert sample departments
INSERT INTO departments (dept_id, dept_name, manager, location) VALUES
(1, 'Engineering', 'Deepak Sinha', 'Mumbai'),
(2, 'Data Science', 'Shweta Kapoor', 'Bangalore'),
(3, 'Human Resources', 'Anil Desai', 'Delhi'),
(4, 'Marketing', 'Sunita Rao', 'Pune'),
(5, 'UX Designer', 'Anand', 'Hyderabad');

-- ===================================================
-- 🔹 Practice Queries (Q1–Q10)
-- ===================================================

-- Q1. List all employees along with their department names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;
-- Explanation: Joins employees to departments on matching department IDs.

-- Q2. Show employee names, designations, and corresponding manager names
SELECT e.name, e.designation, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;
-- Explanation: Joins tables and retrieves manager name for each employee.

-- Q3. Retrieve names and salaries of all employees along with their department location
SELECT e.name, e.salary, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;
-- Explanation: Adds department location to employee details.

-- Q4. List the names of employees who have a department assigned
SELECT name
FROM employees
WHERE department_id IS NOT NULL;
-- Explanation: Filters out employees without department assignments.

-- Q5. Display all departments with at least one employee
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY e.department_id
HAVING COUNT(*) > 0;
-- Explanation: Groups by department and shows only those with employees.

-- Q6. Show each department's name and total number of employees in it
SELECT d.dept_name, COUNT(*) AS no_of_employees
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
-- Explanation: Counts employees per department.

-- Q7. Get a list of all employee names who work in the 'Engineering' department
SELECT e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name = 'Engineering';
-- Explanation: Filters for 'Engineering' department only.

-- Q8. Show employees who joined after 2022 along with their department names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date > '2022-01-01';
-- Explanation: Filters employees based on joining date.

-- Q9. Retrieve the department name and manager for employees earning more than 70000
SELECT d.dept_name, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary > 70000;
-- Explanation: Shows department info for high earners.

-- Q10. List all employees along with their department manager and department location
SELECT e.name, d.manager, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;
-- Explanation: Combines employee, manager, and location info.

-- ===================================================
-- 🔹 INNER JOIN with Aliases and Filtering (Q11–Q20)
-- ===================================================

-- Q11. Get employee and department details where the location is 'Bangalore'
SELECT *
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.location = 'Bangalore';
-- Explanation: Filters joined rows for Bangalore location.

-- Q12. Show employee names and their managers for the 'Data Science' department
SELECT e.name, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name = 'Data Science';
-- Explanation: Matches employees to 'Data Science' manager.

-- Q13. List employees earning between 60000 and 80000 along with department names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary BETWEEN 60000 AND 80000;
-- Explanation: Filters by salary range.

-- Q14. Display department names where employees hold the designation 'Data Analyst'
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.designation = 'Data Analyst';
-- Explanation: Finds departments with data analysts.

-- Q15. List employee names, salaries, and department names where salary > 65000
SELECT e.name, e.salary, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary > 65000;
-- Explanation: Filters employees by salary threshold.

-- Q16. Get all departments that have more than one employee
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING COUNT(*) > 1;
-- Explanation: Filters for departments with multiple employees.

-- Q17. List all backend developers along with their department details
SELECT e.name, d.dept_id, d.dept_name, d.manager, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.designation = 'Backend Developer';
-- Explanation: Fixes case-sensitive designation match.

-- Q18. Retrieve employees who joined in 2023 along with department names and managers
SELECT e.name, d.dept_name, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date BETWEEN '2023-01-01' AND '2023-12-31';
-- Explanation: Filters for join date range in 2023.

-- Q19. Show employees and their departments where the manager’s name contains 'Sinha'
SELECT e.name, d.dept_id, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.manager LIKE '%Sinha%';
-- Explanation: Searches for 'Sinha' in manager names.

-- Q20. List all department names and locations where employees joined before 2021
SELECT d.dept_name, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date < '2021-01-01';
-- Explanation: Filters for employees who joined before 2021.

-- ===================================================
-- 🔹 INNER JOIN with Aggregate Functions (Q21–Q28)
-- ===================================================

-- Q21. Find the average salary of employees per department
SELECT d.dept_name, AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
-- Explanation: Calculates average salary for each department.

-- Q22. Show department-wise total salary expenditure
SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
-- Explanation: Sums salaries for each department.

-- Q23. Count the number of employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
-- Explanation: Counts employees per department.

-- Q24. List departments with average salary greater than 70000
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING AVG(e.salary) > 70000;
-- Explanation: Filters for departments whose average salary exceeds 70k.

-- Q25. Retrieve maximum and minimum salary in each department
SELECT d.dept_name, MIN(e.salary) AS min_salary, MAX(e.salary) AS max_salary
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
-- Explanation: Shows salary range per department.

-- Q26. List department names where total salary is more than 130000
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING SUM(e.salary) > 130000;
-- Explanation: Filters for departments with large salary totals.

-- Q27. Display departments where all employees earn above 60000
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING MIN(e.salary) > 60000;
-- Explanation: Uses MIN to check lowest salary is still above 60k.

-- Q28. Find departments where at least one employee joined in 2022
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY d.dept_id;
-- Explanation: Filters for 2022 joiners and groups by department.

-- ===================================================
-- 🔹 Complex Conditions and Multiple Tables (Q29–Q35)
-- ===================================================

-- Q29. Show employees who do not belong to 'Marketing' or 'Human Resources'
SELECT e.emp_id, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name NOT IN ('Marketing', 'Human Resources');
-- Explanation: Excludes Marketing and HR departments.

-- Q30. List all employees whose department is in Delhi or Pune
SELECT e.emp_id, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.location IN ('Delhi', 'Pune');
-- Explanation: Filters based on department location.

-- Q31. Get department-wise highest paid employee names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
-- Explanation: Uses a correlated subquery to find top earner per department.

-- Q32. Display department and employee names where employee designation contains 'Manager'
SELECT d.dept_name, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.designation LIKE '%Manager%';
-- Explanation: Filters for designations containing the word 'Manager'.

-- Q33. Show departments where none of the employees is an intern
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING SUM(CASE WHEN e.designation = 'Intern' THEN 1 ELSE 0 END) = 0;
-- Explanation: Uses conditional aggregation to ensure no interns exist in department.

-- Q34. List employees whose name starts with 'S' and their department information
SELECT e.name, d.dept_id, d.dept_name, d.manager, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.name LIKE 'S%';
-- Explanation: Filters names starting with 'S'.

-- Q35. Display departments and employees where the department name contains 'Data'
SELECT d.dept_name, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name LIKE '%Data%';
-- Explanation: Searches for the word 'Data' in department names.

-- ✅ End of Day 9 (Q1–Q35)
-- INNER JOIN helps combine related records from two tables based on matching keys.
-- Next: Day 10 → LEFT JOIN, RIGHT JOIN

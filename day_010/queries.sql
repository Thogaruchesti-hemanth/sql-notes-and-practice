
-- 📘 Day 9: INNER JOIN – Answer Key with Improvements

-- Schema & Data Setup

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  department_id INT,
  designation VARCHAR(255),
  salary DECIMAL(10,2),
  join_date DATE
);

INSERT INTO employees (emp_id, name, department_id, designation, salary, join_date) VALUES
(101, 'Aisha Mehra', 1, 'Software Engineer', 70000.00, '2022-03-15'),
(102, 'Rohit Singh', 2, 'Data Analyst', 65000.00, '2021-07-10'),
(103, 'Priya Verma', 3, 'HR Manager', 72000.00, '2019-11-01'),
(104, 'Sameer Khan', 2, 'Data Scientist', 88000.00, '2023-02-20'),
(105, 'Neha Joshi', 4, 'Marketing Lead', 75000.00, '2020-05-05'),
(106, 'Rahul Sharma', NULL, 'Intern', 20000.00, '2024-01-10'),
(107, 'Sneha Patil', 1, 'Backend Developer', 67000.00, '2022-08-30'),
(108, 'Karan Malhotra', 5, 'UX Designer', 60000.00, '2023-06-15');

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(255),
  manager VARCHAR(255),
  location VARCHAR(255)
);

INSERT INTO departments (dept_id, dept_name, manager, location) VALUES
(1, 'Engineering', 'Deepak Sinha', 'Mumbai'),
(2, 'Data Science', 'Shweta Kapoor', 'Bangalore'),
(3, 'Human Resources', 'Anil Desai', 'Delhi'),
(4, 'Marketing', 'Sunita Rao', 'Pune'),
(5, 'UX Designer', 'Anand', 'Hyderabad');
```


-- 🔹 Q1–Q10: Basic INNER JOIN


-- Q1. List all employees along with their department names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;

-- Explanation: Joins employees with departments using matching `department_id`.
-- Improvement: ✅ Already clean and correct.


-- Q2. Show employee names, designations, and corresponding manager names
SELECT e.name, e.designation, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;

-- Explanation: Retrieves each employee’s name, designation, and their department’s manager.
-- Improvement: ✅ Fine as is.

-- Q3. Retrieve names and salaries of all employees along with their department location
SELECT e.name, e.salary, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;

-- Explanation: Joins to include department location with each employee’s details.
-- Improvement: ✅ Correct.

-- Q4. List the names of employees who have a department assigned
SELECT name
FROM employees
WHERE department_id IS NOT NULL;

-- Explanation: Filters out employees with no department.
-- Improvement: Could also be done with `INNER JOIN` to be consistent with the day’s focus.

-- Q5. Display all departments with at least one employee
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY e.department_id
HAVING COUNT(*) > 0;

-- Explanation: Shows departments having employees.
-- Improvement: ✅ Correct — `HAVING COUNT(*) > 0` is fine but redundant for INNER JOIN (always ≥1).

-- Q6. Show each department's name and total number of employees in it
SELECT d.dept_name, COUNT(*) AS no_of_employees
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;

-- Explanation: Groups by department to count employees.
-- Improvement: Could use `GROUP BY d.dept_name` for clarity.

-- Q7. Get a list of all employee names who work in the 'Engineering' department
SELECT e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name = 'Engineering';

-- Explanation: Filters for Engineering department only.
-- Improvement: ✅ Fine.

-- Q8. Show employees who joined after 2022 along with their department names
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date > '2022-01-01';

-- Explanation: Filters on join date.
-- Improvement: ✅ Clean.

-- Q9. Retrieve the department name and manager for employees earning more than 70000

SELECT d.dept_name, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary > 70000;

**Explanation:** Shows department info for high-salary employees.
**Improvement:** ✅ Correct.

---

**Q10. List all employees along with their department manager and department location**

```sql
SELECT e.name, d.manager, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id;
```

**Explanation:** Combines employee name with department manager and location.
**Improvement:** ✅ Good.


**Q11. Get employee and department details where the location is 'Bangalore'**

```sql
SELECT *
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.location = 'Bangalore';
```

**Explanation:** Shows all details for employees whose department is located in Bangalore.
**Improvement:** Could list columns explicitly instead of `SELECT *` for cleaner output.

---

**Q12. Show employee names and their managers for the 'Data Science' department**

```sql
SELECT e.name, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name = 'Data Science';
```

**Explanation:** Matches employees with the manager of the Data Science department.
**Improvement:** ✅ Clean.

---

**Q13. List employees earning between 60000 and 80000 along with department names**

```sql
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary BETWEEN 60000 AND 80000;
```

**Explanation:** Filters employees by salary range and shows their department.
**Improvement:** ✅ Fine.

---

**Q14. Display department names where employees hold the designation 'Data Analyst'**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.designation = 'Data Analyst';
```

**Explanation:** Finds departments that have Data Analysts.
**Improvement:** ✅ Good.

---

**Q15. List employee names, salaries, and department names where salary > 65000**

```sql
SELECT e.name, e.salary, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary > 65000;
```

**Explanation:** Shows employees earning more than ₹65k and their departments.
**Improvement:** ✅ Correct.

---

**Q16. Get all departments that have more than one employee**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING COUNT(*) > 1;
```

**Explanation:** Groups by department and filters where count is more than one.
**Improvement:** Could use `GROUP BY d.dept_name` for readability.

---

**Q17. List all backend developers along with their department details**

```sql
SELECT e.name, d.dept_id, d.dept_name, d.manager, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.designation = 'Backend Developer';
```

**Explanation:** Retrieves backend developers with department info.
**Improvement:** ✅ Correct.

---

**Q18. Retrieve employees who joined in 2023 along with department names and managers**

```sql
SELECT e.name, d.dept_name, d.manager
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date BETWEEN '2023-01-01' AND '2023-12-31';
```

**Explanation:** Filters employees by join year and shows department & manager.
**Improvement:** ✅ Fine.

---

**Q19. Show employees and their departments where the manager’s name contains 'Sinha'**

```sql
SELECT e.name, d.dept_id, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.manager LIKE '%Sinha%';
```

**Explanation:** Finds employees under managers whose names have "Sinha".
**Improvement:** ✅ Correct.

---

**Q20. List all department names and locations where employees joined before 2021**

```sql
SELECT d.dept_name, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date < '2021-01-01';
```

**Explanation:** Shows departments of employees who joined before 2021.
**Improvement:** ✅ Good.

---

## **🔹 Q21–Q28: INNER JOIN with Aggregate Functions**

---

**Q21. Find the average salary of employees per department**

```sql
SELECT d.dept_name, AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
```

**Explanation:** Calculates the average salary for each department.
**Improvement:** Use `ROUND(AVG(e.salary),2)` for formatted results.

---

**Q22. Show department-wise total salary expenditure**

```sql
SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
```

**Explanation:** Totals salaries per department.
**Improvement:** ✅ Fine.

---

**Q23. Count the number of employees in each department**

```sql
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
```

**Explanation:** Counts how many employees are in each department.
**Improvement:** ✅ Good.

---

**Q24. List departments with average salary greater than 70000**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING AVG(e.salary) > 70000;
```

**Explanation:** Filters departments with average salary > ₹70k.
**Improvement:** ✅ Clean.

---

**Q25. Retrieve maximum and minimum salary in each department**

```sql
SELECT d.dept_name, MIN(e.salary) AS min_salary, MAX(e.salary) AS max_salary
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id;
```

**Explanation:** Shows salary range in each department.
**Improvement:** ✅ Correct.

---

**Q26. List department names where total salary is more than 130000**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING SUM(e.salary) > 130000;
```

**Explanation:** Filters for high total-salary departments.
**Improvement:** ✅ Fine.

---

**Q27. Display departments where all employees earn above 60000**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING MIN(e.salary) > 60000;
```

**Explanation:** Uses `MIN` to ensure lowest salary > ₹60k.
**Improvement:** ✅ Correct.

---

**Q28. Find departments where at least one employee joined in 2022**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.join_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY d.dept_id;
```

**Explanation:** Finds departments with 2022 joiners.
**Improvement:** ✅ Good.

---

## **🔹 Q29–Q35: Complex Conditions & Multiple Tables**

---

**Q29. Show employees who do not belong to 'Marketing' or 'Human Resources'**

```sql
SELECT e.emp_id, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name NOT IN ('Marketing', 'Human Resources');
```

**Explanation:** Excludes Marketing & HR employees.
**Improvement:** ✅ Fine.

---

**Q30. List all employees whose department is in Delhi or Pune**

```sql
SELECT e.emp_id, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.location IN ('Delhi', 'Pune');
```

**Explanation:** Filters based on department location.
**Improvement:** ✅ Good.

---

**Q31. Get department-wise highest paid employee names**

```sql
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
```

**Explanation:** Finds top-paid employee in each department.
**Improvement:** ✅ Correct.

---

**Q32. Display department and employee names where employee designation contains 'Manager'**

```sql
SELECT d.dept_name, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.designation LIKE '%Manager%';
```

**Explanation:** Filters employees whose designation has "Manager".
**Improvement:** ✅ Fine.

---

**Q33. Show departments where none of the employees is an intern**

```sql
SELECT d.dept_name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
GROUP BY d.dept_id
HAVING SUM(CASE WHEN e.designation = 'Intern' THEN 1 ELSE 0 END) = 0;
```

**Explanation:** Ensures no interns in department.
**Improvement:** ✅ Good.

---

**Q34. List employees whose name starts with 'S' and their department information**

```sql
SELECT e.name, d.dept_id, d.dept_name, d.manager, d.location
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE e.name LIKE 'S%';
```

**Explanation:** Finds employees starting with S and department details.
**Improvement:** ✅ Clean.

---

**Q35. Display departments and employees where the department name contains 'Data'**

```sql
SELECT d.dept_name, e.name
FROM employees e
JOIN departments d ON e.department_id = d.dept_id
WHERE d.dept_name LIKE '%Data%';
```

**Explanation:** Shows employees in departments containing "Data" in name.
**Improvement:** ✅ Correct.

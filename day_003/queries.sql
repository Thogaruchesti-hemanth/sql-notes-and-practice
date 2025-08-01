-- 📘 Day 3: IN, BETWEEN, LIKE, IS NULL
-- Context: Employees and Projects
-- Practice filtering using IN, BETWEEN, LIKE, IS NULL

-- ===================================================
-- ✅ SCHEMA: Create Tables
-- ===================================================

-- Q1. Create the employees table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(225) NOT NULL,
  department VARCHAR(225) NOT NULL, 
  age INT NOT NULL,
  gender ENUM('F','M','O'),
  email VARCHAR(225) UNIQUE,
  phone_number BIGINT
);

ALTER TABLE employees AUTO_INCREMENT = 101;

-- Q2. Create the projects table
CREATE TABLE projects (
  project_id VARCHAR(10) PRIMARY KEY,
  emp_id INT NOT NULL,
  project_name VARCHAR(255) NOT NULL,
  status VARCHAR(100),
  budget INT,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- Q3. Insert data into employees
INSERT INTO employees (name, department, age, gender, email, phone_number) VALUES
('Alice Smith','Engineering',29,'F','alice@company.com', 9876543210),
('Bob Johnson','Marketing',35,'M', 'bob.j@company.com', 9988776655),
('Carol White','Engineering',32,'F','carolw@company.com',NULL),
('David Brown','HR',41,'M',NULL,9123456789),
('Eva Green','Engineering',26,'F','eva.g@company.com',NULL),
('Frank Ocean','Sales',38,'M','franko@company.com',9876512345),
('Grace Lee','Marketing',30,'F','grace.lee@company.com',9999999999);

-- Q4. Insert data into projects
INSERT INTO projects (project_id, emp_id, project_name, status, budget) VALUES
('P001',101,'Apollo Redesign','Completed',25000),
('P002',103,'Sales Analytics','In Progress',40000),
('P003',102,'Brand Campaign','Completed',30000),
('P004',105,'Backend Migration','Not Started',0),
('P005',104,'HR Portal Upgrade',NULL,15000),
('P006',106,'CRM Integration','In Progress',22000),
('P007',107,'Social Media Ops','Completed',18000),
('P008',101,'UI Revamp','In Progress',27000);

-- ===================================================
-- 🔹 IN Operator (Q1–Q9)
-- ===================================================

-- Q1. Employees in Engineering or Marketing
SELECT * FROM employees WHERE department IN ('Engineering', 'Marketing');
-- Explanation: Filters based on multiple department values.

-- Q2. Names of employees with emp_id IN (101,103,106)
SELECT name FROM employees WHERE emp_id IN (101, 103, 106);
-- Explanation: Returns names matching specified IDs.

-- Q3. Project names with project_id IN ('P002', 'P004', 'P007')
SELECT project_name FROM projects WHERE project_id IN ('P002', 'P004', 'P007');

-- Q4. Employees whose gender is F
SELECT * FROM employees WHERE gender IN ('F');

-- Q5. Employees in Sales or HR departments
SELECT * FROM employees WHERE department IN ('Sales', 'HR');

-- Q6. Projects handled by employees 101 and 105
SELECT * FROM projects WHERE emp_id IN (101, 105);

-- Q7. Employees named Bob Johnson or Grace Lee
SELECT * FROM employees WHERE name IN ('Bob Johnson', 'Grace Lee');

-- Q8. Employees with emp_id IN (999, 888, 101)
SELECT * FROM employees WHERE emp_id IN (999, 888, 101);
-- Explanation: Only emp_id 101 exists and will be returned.

-- Q9. Projects assigned to employees 103, 104, 106
SELECT * FROM projects WHERE emp_id IN (103, 104, 106);

-- ===================================================
-- 🔹 BETWEEN Operator (Q10–Q19)
-- ===================================================

-- Q10. Employees aged between 30 and 40
SELECT * FROM employees WHERE age BETWEEN 30 AND 40;

-- Q11. Employees aged between 26 and 29
SELECT * FROM employees WHERE age BETWEEN 26 AND 29;

-- Q12. Projects with budget between 20000 and 30000
SELECT * FROM projects WHERE budget BETWEEN 20000 AND 30000;

-- Q13. Employees with emp_id between 102 and 106
SELECT * FROM employees WHERE emp_id BETWEEN 102 AND 106;

-- Q14. Projects with project_id between 'P002' and 'P005'
SELECT * FROM projects WHERE project_id BETWEEN 'P002' AND 'P005';

-- Q15. Employees aged between 35 and 45
SELECT * FROM employees WHERE age BETWEEN 35 AND 45;

-- Q16. Projects with budgets between 0 and 10000
SELECT * FROM projects WHERE budget BETWEEN 0 AND 10000;

-- Q17. Projects with budgets NOT between 25000 and 40000
SELECT * FROM projects WHERE budget NOT BETWEEN 25000 AND 40000;

-- Q18. Employees aged exactly 30
SELECT * FROM employees WHERE age BETWEEN 30 AND 30;

-- Q19. Employees aged NOT between 20 and 30
SELECT * FROM employees WHERE age NOT BETWEEN 20 AND 30;

-- ===================================================
-- 🔹 LIKE Operator (Q20–Q27)
-- ===================================================

-- Q20. Names starting with 'A'
SELECT * FROM employees WHERE name LIKE 'A%';

-- Q21. Emails containing 'company'
SELECT * FROM employees WHERE email LIKE '%company%';

-- Q22. Names ending with 'n'
SELECT * FROM employees WHERE name LIKE '%n';

-- Q23. Emails starting with 'carol'
SELECT * FROM employees WHERE email LIKE 'carol%';

-- Q24. Names with 'e' as second letter
SELECT * FROM employees WHERE name LIKE '_e%';

-- Q25. Emails ending with '.com'
SELECT * FROM employees WHERE email LIKE '%.com';

-- Q26. Project names containing 'Upgrade'
SELECT * FROM projects WHERE project_name LIKE '%Upgrade%';

-- Q27. Names containing double vowels (aa, ee, ii, oo, uu)
SELECT * FROM employees 
WHERE name LIKE '%aa%' OR name LIKE '%ee%' OR name LIKE '%ii%' OR name LIKE '%oo%' OR name LIKE '%uu%';

-- ===================================================
-- 🔹 IS NULL / IS NOT NULL (Q28–Q35)
-- ===================================================

-- Q28. Employees whose email is NULL
SELECT * FROM employees WHERE email IS NULL;

-- Q29. Employees whose phone_number is NULL
SELECT * FROM employees WHERE phone_number IS NULL;

-- Q30. Employees whose phone number is NOT NULL
SELECT * FROM employees WHERE phone_number IS NOT NULL;

-- Q31. Projects where status is NULL
SELECT * FROM projects WHERE status IS NULL;

-- Q32. Employees whose email is NOT NULL
SELECT * FROM employees WHERE email IS NOT NULL;

-- Q33. Engineering employees with NULL phone number
SELECT * FROM employees WHERE phone_number IS NULL AND department = 'Engineering';

-- Q34. Projects with NULL status OR 0 budget
SELECT * FROM projects WHERE status IS NULL OR budget = 0;

-- Q35. Employees with email OR phone_number as NULL
SELECT * FROM employees WHERE email IS NULL OR phone_number IS NULL;

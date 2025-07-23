-- 📘 Day 2 – Filtering with WHERE, AND, OR, NOT, and Comparisons
-- -------------------------------------------------------------

-- Q1. Find all employees who are above the age of 30.
SELECT * FROM employees
WHERE age > 30;
-- Explanation: Filters all records where age is greater than 30.

-- Q2. Identify employees whose salary exceeds 70,000.
SELECT * FROM employees
WHERE salary > 70000;
-- Explanation: Retrieves employees earning more than 70,000.

-- Q3. List employees who joined the company after January 1, 2020.
SELECT * FROM employees
WHERE hire_date > '2020-01-01';
-- Explanation: Returns employees hired after the given date.

-- Q4. Retrieve the names of employees who are aged 28 or younger.
SELECT name FROM employees
WHERE age <= 28;
-- Explanation: Filters employees whose age is 28 or less and selects only their names.

-- Q5. Look for employees who belong to the Sales department.
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Sales'
);
-- Explanation: Subquery fetches the id of 'Sales' and filters employees with that department_id.
-- 💡 Tip: Use JOINs if multiple columns from departments are needed.

-- Q6. Show employees who are not part of the Engineering department.
SELECT * FROM employees
WHERE department_id != (
  SELECT id FROM departments WHERE name = 'Engineering'
);
-- Explanation: Filters out employees from Engineering.

-- Q7. Find all employees whose salary is anything other than 90,000.
SELECT * FROM employees
WHERE salary != 90000;
-- Explanation: Excludes employees earning exactly 90,000.

-- Q8. Who among the employees is named Grace Lee?
SELECT * FROM employees
WHERE name = 'Grace Lee';
-- Explanation: Directly matches the name column to 'Grace Lee'.

-- Q9. List all employees except Bob Johnson.
SELECT * FROM employees
WHERE name != 'Bob Johnson';
-- Explanation: Excludes the employee named 'Bob Johnson'.

-- Q10. Who earns either exactly 60,000 or exactly 75,000?
SELECT * FROM employees
WHERE salary IN (60000, 75000);
-- Explanation: Filters employees whose salary is either 60,000 or 75,000.

-- Q11. Determine which employees are at least 30 years old and earn at least 60,000.
SELECT * FROM employees
WHERE age >= 30 AND salary >= 60000;
-- Explanation: Combines both conditions using AND.

-- Q12. Which employees are both older than 30 and earning more than 70,000?
SELECT * FROM employees
WHERE age > 30 AND salary > 70000;
-- Explanation: Filters on both age and salary.

-- Q13. Identify Engineering department employees who earn more than 60,000.
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Engineering'
) AND salary > 60000;
-- Explanation: Ensures department is Engineering and salary condition is met.

-- Q14. Who are the employees hired in or after 2018 and earning 60,000 or less?
SELECT * FROM employees
WHERE hire_date >= '2018-01-01' AND salary <= 60000;
-- Explanation: Applies date and salary range filters together.

-- Q15. Identify employees under the age of 40 who make at least 70,000.
SELECT * FROM employees
WHERE age < 40 AND salary >= 70000;
-- Explanation: Age and salary condition combined using AND.

-- Q16. In the Sales department, who earns no more than 75,000 and is older than 30?
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Sales'
) AND salary <= 75000 AND age > 30;
-- Explanation: Filters employees from Sales, with salary and age conditions.

-- Q17. Retrieve employees who joined before 2021 but are not in the Support department.
SELECT * FROM employees
WHERE hire_date < '2021-01-01' AND department_id != (
  SELECT id FROM departments WHERE name = 'Support'
);
-- Explanation: Excludes employees in Support if they were hired before 2021.

-- Q18. Which employees work in either the Support or Management departments?
SELECT * FROM employees
WHERE department_id IN (
  SELECT id FROM departments WHERE name IN ('Support', 'Management')
);
-- Explanation: Checks for department membership via subquery.

-- Q19. Find employees who are either in the Sales department or joined after 2021.
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Sales'
) OR hire_date > '2021-01-01';
-- Explanation: Uses OR to allow either condition.

-- Q20. Which employees either earn below 60,000 or joined after 2021?
SELECT * FROM employees
WHERE salary < 60000 OR hire_date > '2021-01-01';
-- Explanation: Captures records satisfying either condition.

-- Q21. Who earns over 60,000 and is younger than 35, or was hired before 2016?
SELECT * FROM employees
WHERE (salary > 60000 AND age < 35) OR hire_date < '2016-01-01';
-- Explanation: Grouped with parentheses to control precedence.

-- Q22. From the Management department, who earns a salary other than 99,000?
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Management'
) AND salary != 99000;
-- Explanation: Checks for department and salary inequality.

-- Q23. List employees who are 35 years old or younger.
SELECT * FROM employees
WHERE age <= 35;
-- Explanation: Simple comparison using <= operator.

-- Q24. Who are the employees whose age falls outside the range of 25 to 35?
SELECT * FROM employees
WHERE age < 25 OR age > 35;
-- Explanation: Uses OR to find records outside the specified range.

-- Q25. Show employees who did not join the company after 2022.
SELECT * FROM employees
WHERE NOT hire_date > '2022-12-31';
-- Explanation: Logical negation to invert the condition.

-- Q26. Find Engineering employees who are not younger than 30.
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Engineering'
) AND age >= 30;
-- Explanation: Department match and age ≥ 30.

-- Q27. Which employees do not earn exactly 55,000 and joined before 2021?
SELECT * FROM employees
WHERE salary != 55000 AND hire_date < '2021-01-01';
-- Explanation: Two conditions joined with AND.

-- Q28. Who are the employees not assigned to Sales or Support?
SELECT * FROM employees
WHERE department_id NOT IN (
  SELECT id FROM departments WHERE name IN ('Sales', 'Support')
);
-- Explanation: Excludes Sales and Support department employees.

-- Q29. Which employees are older than 30 or who earn under 60,000 while being in Support?
SELECT * FROM employees
WHERE age > 30 OR (
  salary < 60000 AND department_id = (
    SELECT id FROM departments WHERE name = 'Support'
  )
);
-- Explanation: Grouped AND condition to maintain precedence inside the OR.

-- Q30. Find employees hired after 2020 who either earn more than 50,000 or are younger than 30.
SELECT * FROM employees
WHERE hire_date > '2020-12-31' AND (
  salary > 50000 OR age < 30
);
-- Explanation: Date condition combined with salary or age condition.

-- Q31. Identify employees who joined before 2020 and are older than 35.
SELECT * FROM employees
WHERE hire_date < '2020-01-01' AND age > 35;
-- Explanation: Straightforward AND condition.

-- Q32. Find Management employees who joined the company before 2019.
SELECT * FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'Management'
) AND hire_date < '2019-01-01';
-- Explanation: Ensures both department and hire date condition.

-- Q33. Determine employees whose department is 1 and age is not below 30.
SELECT * FROM employees
WHERE department_id = 1 AND age >= 30;
-- Explanation: Hardcoded department_id 1 (Engineering) and age condition.

-- Q34. Retrieve employees where salary is not 90000 and hire_date is before 2021.
SELECT * FROM employees
WHERE salary != 90000 AND hire_date < '2021-01-01';
-- Explanation: Both conditions must be met.

-- Q35. Which employees earn a salary between 50,000 and 80,000 inclusive?
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 80000;
-- Explanation: Inclusive range filter using BETWEEN.
-- ✅ Cleaner than using salary >= 50000 AND salary <= 80000


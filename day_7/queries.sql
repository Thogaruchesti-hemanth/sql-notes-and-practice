CREATE DATABASE practice;

use practice;

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL
);

INSERT INTO departments (dept_id,dept_name,location) VALUES
(101,'Human Resources','New York'),
(102,'Finance','London'),
(103,'Engineering','San Francisco'),
(104,'Marketing','Chicago'),
(105,'Sales','Mumbai');


CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  dept_id INT NOT NULL,
  join_date DATE,
  salary Decimal(6,2) NOT NULL,
  email VARCHAR(255) UNIQUE,
  age INT NOT NULL,
  bonus INT,
  active ENUM('Yes','No'),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id);
);


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


SELECT * FROM employees;

SELECT name, salary FROM employees;

SELECT dept_name FROM departments;

SELECT name FROM employees WHERE dept_id =102 AND salary>65000;

SELECT name FROM employees WHERE active='No';

SELECT name FROM employees WHERE age>30 OR salary>70000;

SELECT * FROM employees WHERE dept_id!=103;

SELECT * FROM employees WHERE dept_id IN(101,102,105);

SELECT * FROM employees WHERE salary BETWEEN 60000 AND 80000;

SELECT * FROM employees WHERE name LIKE 'A%';

SELECT * FROM employees WHERE bonus IS NULL;

SELECT * FROM employees WHERE email LIKE '%@mail.com';

SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

SELECT * FROM employees ORDER BY salary DESC LIMIT 3 OFFSET 2;

UPDATE employees SET email = 'grace.k@mail.com' WHERE name ='Grace Kim';

UPDATE employees SET bonus =5000 WHERE dept_id =102;

UPDATE employees SET bonus =0 WHERE bonus IS NULL;

DELETE FROM employees WHERE name ='Henry Patel';

DELETE FROM employees WHERE salary<50000;

SELECT count(*) AS total_Count FROM employees WHERE active='Yes';

SELECT MAX(salary) AS Highest_salary FROM employees;

SELECT AVG(age) FROM employees;

SELECT COUNT(DISTINCT dept_id) as no_of_deptartments FROM employees;

SELECT SUM(salary) AS total_salary FROM employees WHERE dept_id =103;

SELECT DISTINT dept_id FROM employees;

SELECT e.name , d.department_name FROM employees LEFT JOIN departments ON e.dept_id = d.dept_id WHERE d.join_date>'2020-01-01';

SELECT * FROM employees WHERE active = 'Yes' AND bonus IS NOT NULL  AND bonus>0;

SELECT d.dept_name FROM departments dLEFT JOIN employees e ON e.dept_id =d.dept_id WHERE e.dept_id !=d.dept_id;

SELECT name FROM employees WHERE join_date =(SELECT MIN(join_date) FROM employees); 

SELECT MAX(Count(*)) AS most_employees FROM employees GROUP BY dept_id ;

SELECT SUM(bonus) FROM employees;

SELECT name FROM employees WHERE email IS NULL OR bonus IS NULL;

SELECT * FROM employees WHERE age<30 AND salary>60000;

SELECT 
  name,
  COALESCE(CAST(bonus AS CHAR), 'No Bonus') AS bonus
FROM 
  employees;













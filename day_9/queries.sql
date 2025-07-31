CREATE DATABASE day9;

use day9;

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  department_id INT,
  designation VARCHAR(255),
  salary DECIMAL(10,2),
  join_date Date 
);

INSERT INTO employees (emp_id, name, department_id, designation, salary, join_date)
VALUES
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
  location VARCHAR(255),
  FOREIGN KEY (dept_id) REFERENCES employees(department_id)
);


INSERT INTO departments (dept_id, dept_name, manager, location) VALUES
(1, 'Engineering', 'Deepak Sinha', 'Mumbai'),
(2, 'Data Science', 'Shweta Kapoor', 'Bangalore'),
(3, 'Human Resources', 'Anil Desai', 'Delhi'),
(4, 'Marketing', 'Sunita Rao', 'Pune');























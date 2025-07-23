CREATE DATABASE day2;

USE day2;

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  salary INT, 
  department_id INT,
  hire_date TIMESTAMP
);

INSERT INTO employees (name, age, salary, department_id, hire_date) VALUES 
('Alice Smith', 28, 55000, 1, 2019-05-21),
('Bob Johnson', 28, 55000, 1, 2019-05-21),
('Carol Davis', 28, 55000, 1, 2019-05-21),
('Dan Wilson', 28, 55000, 1, 2019-05-21),
('Eva Brown', 28, 55000, 1, 2019-05-21),
('Frank Miller', 28, 55000, 1, 2019-05-21),
('Grace Lee', 28, 55000, 1, 2019-05-21),
('Henry White', 28, 55000, 1, 2019-05-21),
('Irene Black', 28, 55000, 1, 2019-05-21),
('Jake Green', 28, 55000, 1, 2019-05-21);


CREATE TABLE departments(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255)
  fk_id FOREIGN KEY (id) REFERENCES employees(department_id);
);

INSERT INTO departments (name, location) VALUES 
('Engineering', 'New York'),
('Sales', 'San Francisco'),
('Support', 'Austin'),
('Management', 'Chicago');


SELECT * FROM employees WHERE age >30;

SELECT * FROM employees WHERE salary>70000;

SELECT * FROM employees WHERE hire_date> 2020-01-01;

SELECT * FROM employees WHERE age<=28;

SELECT * FROM employees WHERE department_id = (SELECT id FROM departments WHERE name ='Sales');

SELECT * FROM employees WHERE department_id IN (SELECT id FROM departments WHERE name !='Engineering');

SELECT salary FROM employees WHERE salary != 90000;

SELECT * FROM employees WHERE name ='Grace Lee';

SELECT * FROM employees WHERE name != 'Bob Johnson';

SELECT * FROM employees WHERE salary = 60000 AND salary =75000;

SELECT * FROM employees WHERE age>30 AND salary>=60,000;

SELECT * FROM employees WHERE age>30 AND salary>=70000;

SELECT * FROM employees WHERE id = (SELECT id FROM departments WHERE name = 'Engineering') AND salary>60000;

SELECT * FROM employees WHERE hire_date>='2017-12-31' AND salary<=60000;


















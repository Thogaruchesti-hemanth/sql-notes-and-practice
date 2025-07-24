CREATE DATABASE day3;

USE day3;

CREATE TABLE employees (
  emp_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(225) NOT NULL,
  department VARCHAR(225) NOT NULL, 
  age INT NOT NULL,
  gender ENUM('F','M','O'),
  email VARCHAR(225) UNIQUE,
  phone_number LONGINT
);

ALTER TABLE employees AUTO_INCREMENT =101;

INSERT INTO employees (name, department, age, gender, email, phone_number) VALUES
('Alice Smith','Engineering',29,'F','alice@company.com', 9876543210),
('Bob Johnson','Marketing',35,'M', 'bob.j@company.com', 9988776655),
('Carol White','Engineering',32,'F','carolw@company.com',NULL),
('David Brown','HR',41,'M',NULL,9123456789),
('Eva Green','Engineering',26,'F','eva.g@company.com',NULL),
('Frank Ocean','Sales',38,'M','franko@company.com',9876512345),
('Grace Lee','Marketing',30,'F','grace.lee@company.com',9999999999);


CREATE TABLE projects (
  project_id VARCHAR(10) PRIMARY KEY ,
  emp_id INT NOT NULL,
  project_name VARCHAR(255) NOT NULL,
  status VARCHAR(100),
  budget INT 
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id);
);

INSERT INTO projects (project_id, emp_id, project_name, status, budget) VALUES
('P001',101,'Apollo Redesign','Completed',25000),
('P002',103,'Sales Analytics','In Progress',40000),
('P003',102,'Brand Campaign','Completed',30000),
('P004',105,'Backend Migration','Not Started',0),
('P005',104,'HR Portal Upgrade',NULL,15000),
('P006',106,'CRM Integration','In Progress',22000),
('P007',107,'Social Media Ops','Completed',18000),
('P008',101,'UI Revamp','In Progress',27000);



SELECT * FROM employees WHERE  department IN ('Engineering','Marketing');

SELECT name FROM employees WHERE emp_id IN (101,103,106);

SELECT project_name FROM projects WHERE project_id IN ('P002','P004','P007');

SELECT * FROM employees WHERE gender='F';

SELECT * FROM employee WHERE department IN ('Sales','HR');

SELECT * FROM projects WHERE emp_id IN (101,105);

SELECT * FROM employees WHERE name IN ('Bob Johnson','Grace Lee');

SELECT * FROM employees WHERE emp_id IN (999,888,101);

SELECT * FROM projects WHERE emp_id IN (103,104,106);

SELECT * FROM employees WHERE age BETWEEN 30 AND 40;

SELECT * FROM employees WHERE age BETWEEN 26 AND 29;

SELECT * FROM projects WHERE budget 20000 AND 30000;

SELECT * FROM projects WHERE project_id BETWEEN 'P002' AND 'P005';

SELECT * FROM employees WHERE age BETWEEN 35 AND 45;

SELECT * FROM projects WHERE budget BETWEEN 0 AND 10000;

SELECT * FROM projects WHERE budget NOT BETWEEN 25000 AND 40000;

SELECT * FROM employees WHERE age =30;

SELECT * FROM employees WHERE age NOT BETWEEN 20 AND 30;

SELECT * FROM employees WHERE name LIKE 'A%';

SELECT * FROM employees WHERE email LIKE '%company%';

SELECT * FROM employees WHERE name LIKE '%n';

SELECT * FROM employees WHERE email LIKE 'carol';

SELECT * FROM employees WHERE name  LIKE '_e%';

SELECT * FROM employees WHERE email LIKE '&.com';

SELECT * FROM projects WHERE project_name LIKE '%Upgrade%';

SELECT * FROM employees WHERE name LIKE IN ('%aa%','%ee%','%ii%'.'%oo%','%uu%');

SELECT * FROM employees WHERE email IS NULL;

SELECT * FROM employees WHERE phone_number IS NULL;

SELECT * FROM employees WHERE phone_number IS NOT NULL;

SELECT * FROM projects WHERE status IS NULL;

SELECT * FROM employees WHERE email IS NULL;

SELECT * FROM employees WHERE phone_number IS NULL AND department ='Engineering';

SELECT * FROM projects WHERE status IS NULL AND budget =0;

SELECT * FROM employees WHERE email IS NULL OR phone_number IS NULL;






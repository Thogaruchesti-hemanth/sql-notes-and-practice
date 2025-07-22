-- CREATE DATABASE day1;

-- use day1;

-- CREATE TABLE students(
-- student_id INT PRIMARY KEY AUTO_INCREMENT,
-- student_name VARCHAR(100) NOT NULL,
-- student_age INT NOT NULL CHECK (student_age>17),
-- gender ENUM('F','M'),
-- email VARCHAR(100) UNIQUE
-- );

-- INSERT INTO students (student_name,student_age,gender,email) VALUES
-- ('Alice',20,'F','alice@gmail.com'),
-- ('Bob',21,'M','bob@gmail.com'),
-- ('Charlie',19,'M','Charlie@gmail.com'),
-- ('Diana',22,'F','diana@gmail.com'),
-- ('Evan',20,'M','evan@gmail.com');


-- CREATE TABLE grades (
-- grade_id INT PRIMARY KEY AUTO_INCREMENT,
-- student_id INT NOT NULL,
-- subject VARCHAR(100) NOT NULL,
-- grade ENUM('A','B','C'),
-- FOREIGN KEY (student_id) REFERENCES students(student_id);
-- );

-- ALTER TABLE grades AUTO_INCREMENT =101;

-- INSERT INTO grades (student_id, subject,grade) VALUES 
-- (1,'Math','A'),
-- (2,'Science','B'),
-- (1,'English','A'),
-- (3,'Math','B'),
-- (4,'History','C'),
-- (5,'Math','A'),
-- (2,'History','A');



-- SELECT * FROM students;

-- SELECT student_name, student_age FROM students;

-- SELECT * FROM grades;

-- SELECT subject FROM grades WHERE student_id =1;

-- SELECT DISTINCT subject FROM grades;

-- SELECT * FROM students WHERE student_age =20;

-- SELECT student_name, email FROM students WHERE gender='F';

-- SELECT student_name FROM students WHERE student_name LIKE 'A%';

-- SELECT * FROM grades WHERE subject='Math';








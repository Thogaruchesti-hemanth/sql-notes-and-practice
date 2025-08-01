-- 📘 Day 1: CREATE TABLE, INSERT, SELECT
-- --------------------------------------
-- Context: Students in a class
-- Today, we are working with data about students and their grades in a classroom environment.
-- You will practice creating tables, inserting sample data, and writing basic SELECT queries to retrieve information.

-- ===================================================
-- 🧱 SCHEMA: Table Definitions (Q1–Q10)
-- ===================================================

-- Q1. Define the `students` table with appropriate column names and data types
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    student_age INT NOT NULL CHECK (student_age > 17),
    gender ENUM('F','M'),
    email VARCHAR(100) UNIQUE
);
-- ✅ Good: Well-defined constraints.
-- 💡 Tip: For email, VARCHAR(100) is good; you could also use VARCHAR(255) if future-proofing.

-- Q2. Define the `grades` table with foreign key relationship
CREATE TABLE grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    subject VARCHAR(100) NOT NULL,
    grade ENUM('A','B','C'),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
-- ✅ Good.
-- 💡 Suggestion: Use `ON DELETE CASCADE` to automatically remove grades when a student is deleted (optional).

-- Q3. Add NOT NULL to name column — ✅ Already applied in Q1

-- Q4. Set `id` as PRIMARY KEY — ✅ Done with `student_id` in Q1

-- Q5. Set `grade_id` as PRIMARY KEY — ✅ Done in Q2

-- Q6. Choose right data type for email — ✅ Used `VARCHAR(100)`, suitable

-- Q7. Add UNIQUE constraint to email — ✅ Done

-- Q8. Define gender as only 'M' or 'F' — ✅ Done using `ENUM`

-- Q9. CHECK age > 17 — ✅ Done correctly

-- Q10. Full `students` table created in Q1 with all constraints — ✅

-- ===================================================
-- 📝 INSERT INTO (Q11–Q20)
-- ===================================================

-- Q11–12. Insert 5 student records
INSERT INTO students (student_name, student_age, gender, email) VALUES
('Alice', 20, 'F', 'alice@gmail.com'),
('Bob', 21, 'M', 'bob@gmail.com'),
('Charlie', 19, 'M', 'charlie@gmail.com'),
('Diana', 22, 'F', 'diana@gmail.com'),
('Evan', 20, 'M', 'evan@gmail.com');
-- ✅ Correct syntax and values

-- Q13. Add students Frank and Grace
INSERT INTO students (student_name, student_age, gender, email) VALUES
('Frank', 23, 'M', 'frank@gmail.com'),
('Grace', 21, 'F', 'grace@gmail.com');
-- ✅ Good

-- Q14. Insert grade for student 4 in Math with grade B
INSERT INTO grades (student_id, subject, grade) VALUES (4, 'Math', 'B');
-- ✅ Correct

-- Q15. Insert multiple rows in one query
INSERT INTO grades (student_id, subject, grade) VALUES
(1, 'Physics', 'B'),
(3, 'Science', 'C'),
(5, 'History', 'B');
-- ✅ Efficient use of multi-row insert

-- Q16. Insert a row with missing email
-- ⚠️ Example: INSERT INTO students (student_name, student_age, gender) VALUES ('Harry', 20, 'M');
-- ❌ Will FAIL if `email` is required (UNIQUE + NOT NULL).
-- 💡 Tip: Make `email` nullable if optional, or always provide one.

-- Q17. Insert grade for student not in `students`
-- ⚠️ INSERT INTO grades (student_id, subject, grade) VALUES (99, 'Math', 'A');
-- ❌ Will FAIL due to foreign key constraint.
-- 💡 Always validate foreign key existence before inserting.

-- Q18. Insert duplicate email
-- ⚠️ INSERT INTO students (...) VALUES ('Tom', ..., 'alice@gmail.com');
-- ❌ Will FAIL due to UNIQUE constraint.
-- 💡 Add a uniqueness check in application layer or use `IGNORE`.

-- Q19. Insert student with age = 16
-- ⚠️ Will FAIL due to `CHECK (age > 17)` constraint.
-- 💡 Validate before insert or adjust logic as needed.

-- Q20. Insert grade for Biology
INSERT INTO grades (student_id, subject, grade) VALUES (2, 'Biology', 'A');
-- ✅ Valid if student ID 2 exists

-- ===================================================
-- 🔎 SELECT Queries (Q21–Q35)
-- ===================================================

-- Q21. Select all rows from students
SELECT * FROM students;

-- Q22. Select only name and age
SELECT student_name, student_age FROM students;

-- Q23. All rows from grades
SELECT * FROM grades;

-- Q24. Subjects taken by student ID 1
SELECT subject FROM grades WHERE student_id = 1;

-- Q25. Unique subjects
SELECT DISTINCT subject FROM grades;

-- Q26. Students aged 20
SELECT * FROM students WHERE student_age = 20;

-- Q27. Female students' name and email
SELECT student_name, email FROM students WHERE gender = 'F';

-- Q28. Names starting with 'A'
SELECT student_name FROM students WHERE student_name LIKE 'A%';

-- Q29. All grade entries for 'Math'
SELECT * FROM grades WHERE subject = 'Math';

-- Q30. Grade Bob received in Science
SELECT grade
FROM grades
WHERE subject = 'Science'
  AND student_id = (SELECT student_id FROM students WHERE student_name = 'Bob');

-- Q31. Students who got an 'A'
SELECT student_name
FROM students
WHERE student_id IN (
    SELECT student_id FROM grades WHERE grade = 'A'
);

-- Q32. Students with recorded grades
SELECT student_name
FROM students
WHERE student_id IN (
    SELECT DISTINCT student_id FROM grades
);

-- Q33. Students with NO grades
SELECT student_name
FROM students
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM grades
);

-- Q34. Subjects and grades for Alice
SELECT subject, grade
FROM grades
WHERE student_id = (SELECT student_id FROM students WHERE student_name = 'Alice');

-- Q35. Show all student names with their corresponding subjects and grades
SELECT s.student_name, g.subject, g.grade
FROM students s
JOIN grades g ON s.student_id = g.student_id;
-- ✅ Correct
-- 💡 Tip: Use aliases (`s`, `g`) for better readability.
-- 💡 Optional: Add ORDER BY s.student_name, g.subject;

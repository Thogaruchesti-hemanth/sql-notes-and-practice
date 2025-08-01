-- 📘 Day 1: CREATE TABLE, INSERT, SELECT
-- --------------------------------------
-- Context: Students in a class
-- Today, we are working with data about students and their grades in a classroom environment.
-- You will practice creating tables, inserting sample data, and writing basic SELECT queries to retrieve information.

-- 👇 Below is the structure and sample data for two tables:
-- 1. students
-- 2. grades

-- ===================================================
-- Table: students
-- ===================================================
-- | id | name       | age | gender | email                |
-- |----|------------|-----|--------|----------------------|
-- | 1  | Alice      | 20  | F      | alice@email.com      |
-- | 2  | Bob        | 21  | M      | bob@email.com        |
-- | 3  | Charlie    | 19  | M      | charlie@email.com    |
-- | 4  | Diana      | 22  | F      | diana@email.com      |
-- | 5  | Evan       | 20  | M      | evan@email.com       |

-- ===================================================
-- Table: grades
-- ===================================================
-- | grade_id | student_id | subject   | grade |
-- |----------|------------|-----------|-------|
-- | 101      | 1          | Math      | A     |
-- | 102      | 2          | Science   | B     |
-- | 103      | 1          | English   | A     |
-- | 104      | 3          | Math      | B     |
-- | 105      | 4          | History   | C     |
-- | 106      | 5          | Math      | A     |
-- | 107      | 2          | History   | A     |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Writing SELECT queries to retrieve relevant information

-- 📚 PRACTICE QUESTIONS (35):
-- ----------------------------

-- 🔹 CREATE TABLE (Q1–Q10)
-- 1. Define the `students` table with appropriate column names and data types.
-- 2. Define the `grades` table, ensuring foreign key relationships where applicable.
-- 3. Add a NOT NULL constraint to the `name` column in `students`.
-- 4. Set `id` in `students` as a PRIMARY KEY.
-- 5. Set `grade_id` as the PRIMARY KEY for the `grades` table.
-- 6. Choose the right data type for the `email` column.
-- 7. Add a UNIQUE constraint to the `email` column.
-- 8. Define a `gender` column that only accepts 'M' or 'F'.
-- 9. Add a CHECK constraint to ensure `age` is greater than 17.
-- 10. Create the `students` table and list all constraints in one statement.

-- 🔹 INSERT INTO (Q11–Q20)
-- 11. Insert the first three rows into the `students` table.
-- 12. Insert the remaining two rows.
-- 13. Add two new students: 'Frank' and 'Grace'.
-- 14. Insert a row in `grades` for student 4 in 'Math' with grade 'B'.
-- 15. Insert multiple rows into `grades` using a single query.
-- 16. Try inserting a row into `students` with missing `email`. What happens?
-- 17. Insert a grade for a student who doesn't exist in `students`. Predict the result.
-- 18. Insert a duplicate email. Predict the result.
-- 19. Insert a student with `age = 16`. Does it work?
-- 20. Insert a grade record with subject 'Biology' and grade 'A'.

-- 🔹 SELECT Basics (Q21–Q35)
-- 21. Select all rows from the `students` table.
-- 22. Select only `name` and `age` from `students`.
-- 23. Retrieve all rows from the `grades` table.
-- 24. Show all subjects taken by student with ID 1.
-- 25. List all unique subjects from the `grades` table.
-- 26. Select students who are 20 years old.
-- 27. Retrieve the name and email of all female students.
-- 28. Select all students whose name starts with 'A'.
-- 29. Select all grade entries for 'Math'.
-- 30. Find the grade received by 'Bob' in 'Science'.
-- 31. List the names of students who received an 'A' grade.
-- 32. Select all students who have grades recorded.
-- 33. Select all students who have **not** received any grades.
-- 34. Retrieve the subjects and grades for student 'Alice'.
-- 35. Write a SELECT query to show all student names with their corresponding subjects and grades.

-- ✅ End of Day 1 Practice
-- Remember: Focus on writing the SQL statements yourself based on this structure.
-- Tomorrow, we’ll build on this with filtering, conditions, and comparisons using WHERE, AND, OR, etc.

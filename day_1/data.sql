-- 📘 Day 1: SQL Fundamentals – CREATE TABLE, INSERT, SELECT
-- ---------------------------------------------------------
-- Welcome to Day 1 of SQL learning! Today’s focus is on three essential commands:
-- 
-- 1️⃣ CREATE TABLE – Define the structure and schema of a table.
-- 2️⃣ INSERT INTO  – Add records into your table manually.
-- 3️⃣ SELECT       – Retrieve data from a table using basic queries.
--
-- The goal is to manually create your own tables and write SQL queries based on the schema and data below.
-- DO NOT copy-paste SQL commands; instead, use the mock schema and questions to write your own!
--
-- 📝 Context:
-- We are simulating a small student database for a college system. It includes two tables:
-- - students: Basic information about each student.
-- - courses: Course details that students might enroll in (we'll build relationships later in future lessons).

-- 🧱 TABLE STRUCTURE: students
-- ---------------------------------------------------
-- | Column Name | Data Type | Description           |
-- |-------------|-----------|------------------------|
-- | id          | INT       | Unique student ID     |
-- | name        | VARCHAR   | Full name             |
-- | age         | INT       | Age of the student    |
-- | grade       | VARCHAR   | Current letter grade  |
-- ---------------------------------------------------

-- 🎓 Sample Data: students
-- ---------------------------------------------------
-- | id | name       | age | grade |
-- |----|------------|-----|-------|
-- | 1  | Alice      | 20  | A     |
-- | 2  | Bob        | 21  | B     |
-- | 3  | Charlie    | 19  | A     |
-- | 4  | David      | 22  | C     |
-- | 5  | Eva        | 20  | B     |
-- ---------------------------------------------------


-- 🧱 TABLE STRUCTURE: courses
-- ----------------------------------------------------------
-- | Column Name   | Data Type | Description               |
-- |---------------|-----------|----------------------------|
-- | course_id     | INT       | Unique course ID          |
-- | course_name   | VARCHAR   | Name of the course        |
-- | instructor    | VARCHAR   | Name of the instructor    |
-- | credits       | INT       | Number of credit hours    |
-- ----------------------------------------------------------

-- 📚 Sample Data: courses
-- ----------------------------------------------------------
-- | course_id | course_name       | instructor    | credits |
-- |-----------|-------------------|---------------|---------|
-- | 101       | Database Systems  | Prof. Smith   | 4       |
-- | 102       | Data Structures   | Dr. Johnson   | 3       |
-- | 103       | Operating Systems | Dr. Lee       | 4       |
-- | 104       | Web Development   | Ms. Clark     | 3       |
-- | 105       | Algorithms        | Prof. Miller  | 4       |
-- ----------------------------------------------------------


-- ❓ 35 Practice Questions – Day 1
-- Write SQL queries to answer the following:

-- [Basic SELECT]
-- 1. Retrieve all students from the table.
-- 2. Select all columns from the courses table.
-- 3. Display only the names and grades of all students.
-- 4. Get the course names and credit values.
-- 5. Show the entire student table sorted by age.

-- [Column Filtering]
-- 6. Select the name and age of students who are 20 years old.
-- 7. Display all courses with 4 credits.
-- 8. Retrieve students who have a grade of 'A'.
-- 9. Show the instructor names teaching courses with more than 3 credits.
-- 10. Get student records where age is not equal to 21.

-- [Exploration]
-- 11. List all unique grades given to students.
-- 12. Show the names of all students younger than 21.
-- 13. Retrieve courses taught by “Dr. Lee”.
-- 14. Display the total number of students.
-- 15. Find the oldest student’s age.

-- [Sorting and Aliases]
-- 16. List students ordered by name alphabetically.
-- 17. Show all courses ordered by credits descending.
-- 18. Select student name and age, rename columns as Student_Name, Student_Age.
-- 19. Display course_id and course_name, rename them to ID and Title.
-- 20. Sort students by grade and then by age.

-- [Filtering with Multiple Conditions]
-- 21. Retrieve students with age > 20 AND grade = 'B'.
-- 22. Get courses where credits >= 3 AND instructor is not “Prof. Smith”.
-- 23. Show students with grade = 'A' OR age < 20.
-- 24. Display courses with names containing the word "Data".

-- [Creative Practice]
-- 25. What query would you write to find students with names starting with 'A'?
-- 26. Select all courses not having 4 credits.
-- 27. List students who are either 19 or 22 years old.
-- 28. What’s the query to count how many students have grade 'B'?
-- 29. Retrieve all students who are not ‘Alice’.

-- [Edge Thinking]
-- 30. Can you write a query that gives no result intentionally?
-- 31. What happens if you SELECT a column that doesn’t exist?
-- 32. Write a query that selects only the first two rows (limit).
-- 33. How would you get the youngest student?
-- 34. List all students whose names are exactly 5 characters long.
-- 35. (Bonus) How would you write a query to check if the “courses” table is empty?

-- ✅ End of Day 1: Practice makes perfect. Experiment with different SELECT queries and build comfort with basic table operations.


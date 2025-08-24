-- 📘 Day 15: Subqueries
-- ------------------------
-- Context: University system managing students and their course enrollments.
-- Today’s focus is on mastering SQL subqueries—queries inside other queries.
-- Subqueries can be used in SELECT, FROM, and WHERE clauses to extract intermediate results.

-- 👇 Below is the structure and sample data for two tables:
-- 1. students
-- 2. enrollments

-- ===================================================
-- Table: students
-- ===================================================
-- | student_id | name            | major           | year  | gpa  | advisor       |
-- |------------|-----------------|------------------|-------|------|---------------|
-- | 101        | Aditi Mehra     | Computer Science | 2     | 3.8  | Dr. Singh     |
-- | 102        | Rohan Sharma    | Economics        | 3     | 3.4  | Dr. Thomas    |
-- | 103        | Priya Iyer      | Mathematics      | 1     | 3.9  | Dr. Patel     |
-- | 104        | Aman Verma      | Computer Science | 4     | 3.2  | Dr. Singh     |
-- | 105        | Simran Kaur     | Psychology       | 3     | 3.7  | Dr. Bose      |
-- | 106        | Nikhil Joshi    | Economics        | 2     | 2.9  | Dr. Thomas    |
-- | 107        | Tanya Deshmukh  | Mathematics      | 4     | 3.5  | Dr. Patel     |
-- | 108        | Kunal Bansal    | Computer Science | 1     | 3.6  | Dr. Singh     |

-- ===================================================
-- Table: enrollments
-- ===================================================
-- | enrollment_id | student_id | course_code | semester | grade |
-- |---------------|------------|-------------|----------|--------|
-- | 1001          | 101        | CS101        | Fall23   | A      |
-- | 1002          | 101        | CS201        | Fall23   | A-     |
-- | 1003          | 102        | EC101        | Fall23   | B+     |
-- | 1004          | 103        | MA101        | Fall23   | A+     |
-- | 1005          | 104        | CS101        | Fall23   | B-     |
-- | 1006          | 105        | PSY101       | Fall23   | A      |
-- | 1007          | 106        | EC201        | Fall23   | C+     |
-- | 1008          | 107        | MA201        | Fall23   | B      |
-- | 1009          | 108        | CS101        | Fall23   | A      |
-- | 1010          | 108        | CS103        | Fall23   | B+     |
-- | 1011          | 102        | EC201        | Fall23   | B-     |
-- | 1012          | 104        | CS301        | Fall23   | B+     |

-- 📝 Instructions:
-- Manually write SQL for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing subqueries in SELECT, WHERE, and FROM clauses

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic Subqueries (Q1–Q10)
-- 1. List names of students who have enrolled in course 'CS101'.
-- 2. Show all student names whose GPA is higher than the average GPA of all students.
-- 3. Display names and majors of students advised by the same advisor as 'Rohan Sharma'.
-- 4. List student IDs of those who have received an 'A' grade in any course.
-- 5. Show names of students who have taken more than one course.
-- 6. Find names of students enrolled in all courses that 'Aditi Mehra' is enrolled in.
-- 7. Display courses taken by students majoring in 'Computer Science'.
-- 8. Find the name(s) of student(s) with the highest GPA.
-- 9. List names of students whose advisor advises more than 2 students.
-- 10. Show students who took a course that no other student took.

-- 🔹 Subqueries in WHERE Clause (Q11–Q20)
-- 11. Display all students whose GPA is below the GPA of 'Priya Iyer'.
-- 12. List courses that were taken by at least one Economics student.
-- 13. Find all students who have taken a course with student_id 104.
-- 14. Show names of students who have not taken 'MA101'.
-- 15. Display students who took all the same courses as student_id 108.
-- 16. List all students who received a better grade than 'Aman Verma' in 'CS101'.
-- 17. Show names of students who took courses in Fall23 but did not get a grade 'A'.
-- 18. Display students who are not enrolled in any course.
-- 19. List names of students whose courses overlap with those of 'Simran Kaur'.
-- 20. Show students whose GPA is equal to the minimum GPA among all students.

-- 🔹 Subqueries in SELECT Clause (Q21–Q27)
-- 21. Show each student's name along with their total number of enrollments.
-- 22. Display student names with their GPA and average GPA of all students.
-- 23. List each course_code with number of students enrolled.
-- 24. For each student, show their name and highest grade achieved.
-- 25. Show the name of each student and the number of unique semesters they've enrolled in.
-- 26. Display student names with how many other students share their advisor.
-- 27. Show the name and GPA of the top 3 students based on GPA.

-- 🔹 Subqueries in FROM Clause (Q28–Q32)
-- 28. From a subquery of students with GPA > 3.5, list their names and majors.
-- 29. From a derived table that counts enrollments per student, list those with 2+ courses.
-- 30. Use a subquery to find average GPA per major and display all majors above 3.5 average.
-- 31. Create a derived table of course-wise average grade (use CASE) and show top courses.
-- 32. From a subquery, show students with total enrollments equal to the max number of enrollments.

-- 🔹 Complex Subqueries & Challenge (Q33–Q35)
-- 33. List students who have taken both 'CS101' and 'CS201'.
-- 34. Find students whose advisor also advises a student with GPA < 3.0.
-- 35. Show all students who have only taken courses in their major field (based on course_code prefix).

-- ✅ End of Day 15 Practice
-- Today we focused deeply on mastering **subqueries** in different clauses.
-- Tomorrow, we’ll explore the next step: **Day 16 – Correlated Subqueries** 🔄

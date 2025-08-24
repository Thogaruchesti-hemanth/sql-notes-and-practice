-- 📘 Day 13: UNION, INTERSECT, EXCEPT
-- -----------------------------------
-- Context: College database with information about students and their enrollments in courses.
-- Today's focus is on combining, comparing, and filtering datasets using:
-- - `UNION`: Combine results from two SELECTs (removes duplicates)
-- - `UNION ALL`: Same as UNION but keeps duplicates
-- - `INTERSECT`: Returns common rows between two SELECTs
-- - `EXCEPT`: Returns rows from the first SELECT that aren't in the second

-- 👇 Below is the structure and sample data for two tables:
-- 1. students
-- 2. course_enrollments

-- ===================================================
-- Table: students
-- ===================================================
-- | student_id | name             | major         | year  | email                  |
-- |------------|------------------|---------------|-------|------------------------|
-- | 101        | Aditi Sharma     | Computer Sci  | 2022  | aditi@mail.com         |
-- | 102        | Ravi Mehta       | Physics       | 2023  | ravi.m@mail.com        |
-- | 103        | Sneha Iyer       | Math          | 2022  | sneha.i@mail.com       |
-- | 104        | Kabir Verma      | Computer Sci  | 2021  | kabir.v@mail.com       |
-- | 105        | Priya Ramesh     | Biology       | 2024  | priya.r@mail.com       |
-- | 106        | Amit Chawla      | Physics       | 2023  | amit.c@mail.com        |
-- | 107        | Neha Desai       | Chemistry     | 2022  | neha.d@mail.com        |
-- | 108        | Varun Kapoor     | Math          | 2023  | varun.k@mail.com       |

-- ===================================================
-- Table: course_enrollments
-- ===================================================
-- | enrollment_id | student_id | course_code | semester   | grade |
-- |---------------|------------|-------------|------------|-------|
-- | E001          | 101        | CS101       | Fall 2023  | A     |
-- | E002          | 102        | PHY101      | Spring 2024| B     |
-- | E003          | 103        | MATH101     | Fall 2023  | A     |
-- | E004          | 104        | CS101       | Fall 2023  | B     |
-- | E005          | 105        | BIO101      | Spring 2024| A     |
-- | E006          | 106        | PHY101      | Spring 2024| C     |
-- | E007          | 107        | CHEM101     | Fall 2023  | B     |
-- | E008          | 108        | MATH101     | Fall 2023  | A     |
-- | E009          | 103        | PHY101      | Spring 2024| B     |
-- | E010          | 101        | MATH101     | Fall 2023  | A     |

-- 📝 Instructions:
-- Write SQL manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `UNION`, `UNION ALL`, `INTERSECT`, and `EXCEPT` operations

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 UNION Basics (Q1–Q10)
-- 1. List all unique majors and all unique course codes.
-- 2. Get all unique student names and all unique course codes.
-- 3. Get all distinct years and distinct semesters using UNION.
-- 4. List names of students and grades from enrollments (note: will only work as structure-only sample).
-- 5. Display all unique student_ids from both tables.
-- 6. Combine all majors and semesters into one list using UNION.
-- 7. List all unique email addresses and course_codes.
-- 8. Display all course codes and majors in a single list (ignore duplicates).
-- 9. List student_ids from students and student_ids from enrollments without duplicates.
-- 10. Combine all grades and years as a single list of values.

-- 🔹 UNION ALL (Q11–Q17)
-- 11. Display all majors and semesters with duplicates included.
-- 12. List all course_codes from enrollments twice using UNION ALL.
-- 13. Combine student names and majors (some names might repeat) using UNION ALL.
-- 14. Show all student_ids from both tables including duplicates.
-- 15. Get list of grades and years allowing repeats.
-- 16. List all student emails and majors in one list using UNION ALL.
-- 17. Combine all semesters and majors, even if repeated.

-- 🔹 INTERSECT Practice (Q18–Q23)
-- 18. Find student_ids present in both `students` and `course_enrollments`.
-- 19. Get student_ids of students who are enrolled in courses.
-- 20. Find common values between student majors and course_codes.
-- 21. Show years that also appear as semesters (might be same string format).
-- 22. Find student names that match any course_code (check if any overlap).
-- 23. Identify common values between grades and years.

-- 🔹 EXCEPT Practice (Q24–Q30)
-- 24. Get student_ids in `students` but not in `course_enrollments`.
-- 25. Find course_codes not matched by any major.
-- 26. List emails that don’t appear as grades.
-- 27. Display all majors except those that also exist as course_codes.
-- 28. List student names that are not in course_enrollments.
-- 29. Show all student_ids from enrollments not in students table.
-- 30. Get all grades except those received by student_id 103.

-- 🔹 Combined Logic (Q31–Q35)
-- 31. List student_ids enrolled in Fall 2023 but not in Spring 2024.
-- 32. Show course_codes from Fall 2023 and Spring 2024, without duplicates.
-- 33. Get list of students enrolled in MATH101 or CS101.
-- 34. Display names of students who are not enrolled in any course.
-- 35. Find all student_ids who enrolled in CS101 but not in PHY101.

-- ✅ End of Day 13 Practice
-- Practice how each set operator behaves with duplicate and non-duplicate data.
-- Tomorrow, we will move to: "Day 14: Review + Real-World Query Practice"

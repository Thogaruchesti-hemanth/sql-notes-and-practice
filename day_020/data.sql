-- 📘 Day 20: Stored Procedures
-- ----------------------------
-- Context: Hospital Management System with patient records and appointments.
-- Today’s practice focuses on writing and understanding SQL Stored Procedures
-- — reusable blocks of SQL code to encapsulate logic for tasks like data retrieval,
--    updates, inserts, and conditional processing.

-- 👇 Below is the structure and sample data for two tables:
-- 1. patients
-- 2. appointments

-- ===================================================
-- Table: patients
-- ===================================================
-- | patient_id | full_name        | gender | dob        | phone         | email                  | blood_type | is_active |
-- |------------|------------------|--------|------------|---------------|------------------------|------------|-----------|
-- | 101        | Rohan Mehta      | M      | 1985-06-22 | 9876543210    | rohan.m@mail.com       | B+         | Yes       |
-- | 102        | Anjali Sharma    | F      | 1992-11-10 | 9123456780    | anjali.s@mail.com      | O-         | Yes       |
-- | 103        | Ravi Iyer        | M      | 1978-02-05 | 9001234567    | ravi.iyer@mail.com     | A+         | No        |
-- | 104        | Sneha Kapoor     | F      | 1989-03-17 | 9845123490    | sneha.k@mail.com       | AB+        | Yes       |
-- | 105        | Mohan Raj        | M      | 1965-09-30 | 9966332211    | mohan.raj@mail.com     | O+         | Yes       |
-- | 106        | Priya Verma      | F      | 2000-01-25 | 9765432100    | priya.v@mail.com       | B-         | No        |

-- ===================================================
-- Table: appointments
-- ===================================================
-- | appointment_id | patient_id | doctor_name       | department     | appointment_date | status     | remarks            |
-- |----------------|------------|-------------------|----------------|------------------|------------|--------------------|
-- | A001           | 101        | Dr. Neha Joshi    | Cardiology     | 2024-12-15       | Completed  | ECG done           |
-- | A002           | 102        | Dr. Raj Malhotra  | Dermatology    | 2024-12-20       | Scheduled  | Skin rash consult  |
-- | A003           | 103        | Dr. Kavita Rao    | Neurology      | 2024-11-01       | Cancelled  | Patient unwell     |
-- | A004           | 104        | Dr. Karan Mehra   | Pediatrics     | 2024-10-05       | Completed  | Follow-up advised  |
-- | A005           | 105        | Dr. Sameer Khan   | Orthopedics    | 2024-12-22       | Scheduled  | Knee pain consult  |
-- | A006           | 106        | Dr. Neha Joshi    | Cardiology     | 2024-11-10       | Completed  | BP checked         |
-- | A007           | 102        | Dr. Karan Mehra   | Pediatrics     | 2025-01-03       | Scheduled  | Routine check-up   |
-- | A008           | 101        | Dr. Kavita Rao    | Neurology      | 2024-11-25       | Scheduled  | MRI advised        |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Writing and testing stored procedures using today's questions

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basics of Stored Procedures (Q1–Q10)
-- 1. Write a stored procedure to return all active patients.
-- 2. Create a procedure to list all appointments for a given patient ID.
-- 3. Write a stored procedure that inserts a new appointment for a patient.
-- 4. Write a stored procedure that updates the status of an appointment.
-- 5. Create a procedure that returns all completed appointments in Cardiology.
-- 6. Create a stored procedure to count how many appointments each patient has.
-- 7. Write a procedure to get patient details by phone number.
-- 8. Create a procedure to delete all cancelled appointments before a specific date.
-- 9. Write a stored procedure that returns all female patients above age 30.
-- 10. Create a stored procedure that checks if a patient exists based on email.

-- 🔹 Parameters and Conditions (Q11–Q20)
-- 11. Write a stored procedure to list appointments by doctor name and status.
-- 12. Create a procedure that takes department name and returns all scheduled appointments.
-- 13. Write a stored procedure that returns appointments within a date range.
-- 14. Write a procedure to change the phone number of a patient given their ID.
-- 15. Create a procedure to deactivate a patient (set is_active = 'No') by email.
-- 16. Write a procedure that returns a message if no appointments are found for a patient.
-- 17. Create a procedure to fetch all remarks for appointments of a given department.
-- 18. Write a procedure to update remarks for an appointment based on appointment ID.
-- 19. Create a stored procedure to return all appointments for patients with blood type 'O+'.
-- 20. Write a procedure that returns the number of appointments per department.

-- 🔹 Stored Procedures with Logic & Cursors (Q21–Q28)
-- 21. Write a stored procedure that loops through all appointments and marks overdue ones as 'Missed' (appointment_date < current_date and status = 'Scheduled').
-- 22. Create a procedure that calculates the average number of appointments per active patient.
-- 23. Write a stored procedure to return names of doctors with more than 2 appointments.
-- 24. Create a procedure to fetch patients who have appointments in multiple departments.
-- 25. Write a stored procedure to list the 3 most recently completed appointments.
-- 26. Create a procedure to deactivate all patients with no appointments.
-- 27. Write a stored procedure that returns the count of appointments per status (Scheduled, Completed, Cancelled).
-- 28. Create a procedure that takes a doctor's name and returns distinct patients they’ve seen.

-- 🔹 Advanced Scenarios (Q29–Q35)
-- 29. Write a stored procedure that generates a summary report: patient name, number of appointments, and last appointment date.
-- 30. Create a stored procedure that inserts both a patient and their first appointment in one transaction.
-- 31. Write a stored procedure to clone an existing appointment for the same patient but on a new date.
-- 32. Create a procedure that alerts if any patient has more than 5 future appointments.
-- 33. Write a procedure to reassign all appointments from one doctor to another.
-- 34. Create a stored procedure to bulk-cancel all future appointments for inactive patients.
-- 35. Write a procedure to return all patients who haven’t had any appointments in the past year.

-- ✅ End of Day 20 Practice
-- Remember to explore stored procedures with different use cases:
-- - Parameters (IN, OUT, INOUT)
-- - Conditional logic
-- - Cursors and loops
-- - Error handling (optional for advanced learners)
-- 
-- 🔜 Tomorrow's Topic: "Day 21: Transactions and ACID"
-- We will explore transaction control (BEGIN, COMMIT, ROLLBACK) and understand how ACID properties maintain data integrity.

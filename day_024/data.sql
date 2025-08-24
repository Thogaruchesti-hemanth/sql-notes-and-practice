-- 📘 Day 24: Library Management
-- -----------------------------
-- Main Topics: UPDATE, DELETE
-- Tables: members, books
-- Context:
-- A public library system that maintains records of members and the books
-- they borrow. Each member may borrow multiple books, and each book can
-- either be available or issued to a member.

-- 👇 Below is the structure and sample data for two tables:
-- 1. members
-- 2. books

-- ===================================================
-- Table: members
-- ===================================================
-- | member_id | name             | join_date  | membership_type | email                  | fines_due |
-- |-----------|------------------|------------|------------------|------------------------|-----------|
-- | 301       | Kavya Sharma     | 2023-01-10 | Standard         | kavya@mail.com         | 0.00      |
-- | 302       | Aman Mehra       | 2022-09-15 | Premium          | aman.mehra@mail.com    | 12.00     |
-- | 303       | Isha Roy         | 2023-04-01 | Standard         | isha.r@mail.com        | 0.00      |
-- | 304       | Dev Malhotra     | 2021-06-22 | Premium          | NULL                   | 5.50      |
-- | 305       | Rohan Das        | 2023-05-05 | Standard         | rohan.d@mail.com       | 0.00      |
-- | 306       | Priya Kapoor     | 2020-12-10 | Premium          | priya.kapoor@mail.com  | 18.75     |
-- | 307       | Neha Jain        | 2023-07-12 | Standard         | neha.jain@mail.com     | 0.00      |

-- ===================================================
-- Table: books
-- ===================================================
-- | book_id | title                        | author             | genre         | available | issued_to |
-- |---------|------------------------------|--------------------|---------------|-----------|-----------|
-- | B101    | The Power of Habit           | Charles Duhigg     | Self-help     | No        | 302       |
-- | B102    | The Kite Runner              | Khaled Hosseini    | Fiction       | Yes       | NULL      |
-- | B103    | Steve Jobs                   | Walter Isaacson    | Biography     | No        | 304       |
-- | B104    | Think Like a Monk            | Jay Shetty         | Self-help     | Yes       | NULL      |
-- | B105    | Sapiens                      | Yuval Noah Harari  | History       | No        | 306       |
-- | B106    | The Psychology of Money      | Morgan Housel      | Finance       | Yes       | NULL      |
-- | B107    | Animal Farm                  | George Orwell      | Satire        | No        | 302       |
-- | B108    | Man's Search for Meaning     | Viktor Frankl      | Memoir        | Yes       | NULL      |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `UPDATE` and `DELETE` statements

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 UPDATE Basics (Q1–Q10)
-- 1. Update the email of member 'Dev Malhotra' to `dev.m@mail.com`.
-- 2. Change membership type of all Standard members to 'Premium'.
-- 3. Set `fines_due` to 0 for member_id 304.
-- 4. Update genre of 'The Psychology of Money' to 'Self-help'.
-- 5. Change availability of book_id 'B101' to 'Yes'.
-- 6. Update the issued_to of book 'The Kite Runner' to member_id 305.
-- 7. Set all NULL emails in the `members` table to 'unknown@library.com'.
-- 8. Change name of member with member_id 302 to 'Aman M. Singh'.
-- 9. Set all Premium members' fines to 0.
-- 10. Update the title of book_id 'B107' to 'Animal Farm (Revised Edition)'.

-- 🔹 UPDATE with Conditions (Q11–Q20)
-- 11. Update all books authored by 'Jay Shetty' to genre 'Mindfulness'.
-- 12. Set availability to 'No' for all books currently issued.
-- 13. Add 5.00 to fines_due for all members who joined before '2022-01-01'.
-- 14. Set membership_type to 'Gold' for all members with 0 fines.
-- 15. Update all members whose names start with 'K' to have 'Standard' membership.
-- 16. Change genre of all 'Fiction' books to 'Literary Fiction'.
-- 17. Set issued_to of all books with genre 'Self-help' to 303.
-- 18. Update `join_date` of member_id 301 to '2023-02-01'.
-- 19. Change all NULL values in issued_to to 0.
-- 20. Append '(Updated)' to all book titles where genre is 'Memoir'.

-- 🔹 DELETE Basics (Q21–Q28)
-- 21. Delete the member whose name is 'Priya Kapoor'.
-- 22. Delete all members who have 0 fines and joined after '2023-06-01'.
-- 23. Delete all books that are available and have no issued_to.
-- 24. Remove the book with title 'Animal Farm'.
-- 25. Delete members with NULL emails.
-- 26. Delete books that belong to genre 'Satire'.
-- 27. Delete all books issued to member_id 302.
-- 28. Delete the member with member_id 307.

-- 🔹 DELETE with Conditions (Q29–Q35)
-- 29. Delete all members whose membership_type is 'Gold'.
-- 30. Remove books authored by 'Khaled Hosseini'.
-- 31. Delete all books where availability is 'No' and the member's fines_due is more than 10.
-- 32. Delete books not issued to anyone (NULL in issued_to).
-- 33. Remove all members who joined before '2021-01-01'.
-- 34. Delete members who have both NULL email and fines_due > 5.
-- 35. Remove books with 'Money' in the title.

-- ✅ End of Day 24 Practice
-- Be sure to test UPDATE and DELETE with `SELECT` first.
-- Tomorrow’s Topic: "Day 25: E-Commerce Database"

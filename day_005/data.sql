-- 📘 Day 5 Extended: UPDATE, DELETE, ALTER, DROP, TRUNCATE
-- --------------------------------------------------------
-- Context: Library system managing books and members.
-- Today’s practice focuses on performing SQL UPDATE, DELETE,
-- and also table structure modifications (ALTER, DROP, TRUNCATE).

-- 👇 Below is the structure and sample data for two tables:
-- 1. members
-- 2. books

-- ===================================================
-- Table: members
-- ===================================================
-- | member_id | name             | join_date  | membership_type | email                  | fines_due |
-- |-----------|------------------|------------|------------------|------------------------|-----------|
-- | 201       | Riya Sharma      | 2023-01-10 | Standard         | riya@mail.com          | 0.00      |
-- | 202       | Arjun Patel      | 2022-11-22 | Premium          | arjun.patel@mail.com   | 15.50     |
-- | 203       | Meera Iyer       | 2023-03-05 | Standard         | meera.iyer@mail.com    | 0.00      |
-- | 204       | Sameer Khan      | 2021-09-12 | Premium          | NULL                   | 8.75      |
-- | 205       | Ananya Joshi     | 2023-06-01 | Standard         | ananya.j@mail.com      | 0.00      |
-- | 206       | Rahul Verma      | 2020-08-20 | Premium          | rahul.v@mail.com       | 27.00     |
-- | 207       | Nisha Mehta      | 2023-07-15 | Standard         | nisha.m@mail.com       | 0.00      |

-- ===================================================
-- Table: books
-- ===================================================
-- | book_id | title                       | author             | genre         | available | issued_to |
-- |---------|-----------------------------|--------------------|---------------|-----------|-----------|
-- | B001    | The Silent Patient          | Alex Michaelides   | Thriller      | No        | 202       |
-- | B002    | Atomic Habits               | James Clear        | Self-help     | Yes       | NULL      |
-- | B003    | Becoming                    | Michelle Obama     | Biography     | No        | 204       |
-- | B004    | The Alchemist               | Paulo Coelho       | Fiction       | Yes       | NULL      |
-- | B005    | Deep Work                   | Cal Newport        | Productivity  | No        | 206       |
-- | B006    | Educated                    | Tara Westover      | Memoir        | Yes       | NULL      |
-- | B007    | 1984                        | George Orwell      | Dystopian     | No        | 202       |
-- | B008    | Ikigai                      | Hector Garcia      | Self-help     | Yes       | NULL      |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `UPDATE`, `DELETE`, `ALTER`, `DROP`, `TRUNCATE`

-- 📚 PRACTICE QUESTIONS (50):
-- ---------------------------

-- 🔹 UPDATE Basics (Q1–Q10)
-- 1. Update the email of member 'Sameer Khan' to `sameer.k@mail.com`.
-- 2. Change membership type of all Standard members to 'Premium'.
-- 3. Set `fines_due` to 0 for member_id 204.
-- 4. Update genre of 'Deep Work' to 'Self-help'.
-- 5. Change availability of book_id 'B001' to 'Yes'.
-- 6. Update the issued_to of book 'The Alchemist' to member_id 205.
-- 7. Set all NULL emails in the `members` table to 'unknown@mail.com'.
-- 8. Change name of member with member_id 202 to 'Arjun P. Singh'.
-- 9. Set all Premium members' fines to 0.
-- 10. Update the title of book_id 'B007' to 'Nineteen Eighty-Four'.

-- 🔹 UPDATE with Conditions (Q11–Q20)
-- 11. Update all books authored by 'James Clear' to genre 'Motivational'.
-- 12. Set availability to 'No' for all books currently issued.
-- 13. Add 5.00 to fines_due for all members who joined before '2022-01-01'.
-- 14. Set membership_type to 'Gold' for all members with 0 fines.
-- 15. Update all members whose names start with 'R' to have 'Standard' membership.
-- 16. Change genre of all 'Fiction' books to 'Literary Fiction'.
-- 17. Set issued_to of all books with genre 'Self-help' to 203.
-- 18. Update `join_date` of member_id 201 to '2023-02-01'.
-- 19. Change all NULL values in issued_to to 0.
-- 20. Append '(Updated)' to all book titles where genre is 'Memoir'.

-- 🔹 DELETE Basics (Q21–Q28)
-- 21. Delete the member whose name is 'Rahul Verma'.
-- 22. Delete all members who have 0 fines and joined after '2023-05-01'.
-- 23. Delete all books that are available and have no issued_to.
-- 24. Remove the book with title '1984'.
-- 25. Delete members with NULL emails.
-- 26. Delete books that belong to genre 'Dystopian'.
-- 27. Delete all books issued to member_id 202.
-- 28. Delete the member with member_id 207.

-- 🔹 DELETE with Conditions (Q29–Q35)
-- 29. Delete all members whose membership_type is 'Gold'.
-- 30. Remove books authored by 'Paulo Coelho'.
-- 31. Delete all books where availability is 'No' and fines_due of the member is more than 10.
-- 32. Delete books not issued to anyone (NULL in issued_to).
-- 33. Remove all members who joined before '2021-01-01'.
-- 34. Delete members who have both NULL email and fines_due > 5.
-- 35. Remove books with 'Work' in the title.

-- 🔹 ALTER TABLE (Q36–Q42)
-- 36. Add a new column `phone` (VARCHAR(15)) to the `members` table.
-- 37. Add a new column `published_year` (INT) to the `books` table.
-- 38. Modify the `membership_type` column to increase its size to VARCHAR(50).
-- 39. Rename column `available` in `books` to `is_available`.
-- 40. Set default value of `fines_due` as 0 in `members`.
-- 41. Remove the `phone` column from `members`.
-- 42. Change datatype of `issued_to` column in `books` from INT to VARCHAR(10).

-- 🔹 TRUNCATE TABLE (Q43–Q46)
-- 43. Truncate the `books` table to remove all book records.
-- 44. Truncate the `members` table to reset data while keeping structure.
-- 45. Explain the difference between DELETE and TRUNCATE using `books`.
-- 46. Re-insert sample data after truncating the `members` table.

-- 🔹 DROP TABLE / COLUMN (Q47–Q50)
-- 47. Drop the `books` table completely from the database.
-- 48. Drop the `members` table permanently.
-- 49. Drop the `email` column from the `members` table.
-- 50. Drop the entire database `library_system`.

-- ✅ End of Day 5 Extended Practice
-- Remember to test carefully:
-- - Use SELECT before DELETE.
-- - ALTER/DROP/TRUNCATE are irreversible, use with caution.
-- Next session will cover: Constraints, Transactions, and Rollbacks.

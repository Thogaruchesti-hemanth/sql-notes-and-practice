-- 📘 Day 5: UPDATE, DELETE
-- ----------------------------------------
-- Context: Library system managing books and members.
-- Today, we are performing SQL UPDATE and DELETE operations – modifying existing records and removing unwanted data.

-- ===================================================
-- ✅ SCHEMA: Create Tables
-- ===================================================

-- Q1. Create the members table
CREATE TABLE members (
  member_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  join_date DATE NOT NULL,
  membership_type ENUM('Standard', 'Premium', 'Gold'),
  email VARCHAR(255) UNIQUE,
  fines_due DECIMAL(6,2)
);

-- Q2. Create the books table
CREATE TABLE books (
  book_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255),
  genre VARCHAR(255),
  available ENUM('Yes', 'No'),
  issued_to INT
);

-- Q3. Insert sample data into members
INSERT INTO members (member_id, name, join_date, membership_type, email, fines_due) VALUES
(201, 'Riya Sharma', '2023-01-10', 'Standard', 'riya@mail.com', 0.00),
(202, 'Arjun Patel', '2022-11-22', 'Premium', 'arjun.patel@mail.com', 15.50),
(203, 'Meera Iyer', '2023-03-05', 'Standard', 'meera.iyer@mail.com', 0.00),
(204, 'Sameer Khan', '2021-09-12', 'Premium', NULL, 8.75),
(205, 'Ananya Joshi', '2023-06-01', 'Standard', 'ananya.j@mail.com', 0.00),
(206, 'Rahul Verma', '2020-08-20', 'Premium', 'rahul.v@mail.com', 27.00),
(207, 'Nisha Mehta', '2023-07-15', 'Standard', 'nisha.m@mail.com', 0.00);

-- Q4. Insert sample data into books
INSERT INTO books (book_id, title, author, genre, available, issued_to) VALUES
('B001', 'The Silent Patient', 'Alex Michaelides', 'Thriller', 'No', 202),
('B002', 'Atomic Habits', 'James Clear', 'Self-help', 'Yes', NULL),
('B003', 'Becoming', 'Michelle Obama', 'Biography', 'No', 204),
('B004', 'The Alchemist', 'Paulo Coelho', 'Fiction', 'Yes', NULL),
('B005', 'Deep Work', 'Cal Newport', 'Productivity', 'No', 206),
('B006', 'Educated', 'Tara Westover', 'Memoir', 'Yes', NULL),
('B007', '1984', 'George Orwell', 'Dystopian', 'No', 202),
('B008', 'Ikigai', 'Hector Garcia', 'Self-help', 'Yes', NULL);

-- ===================================================
-- 🔹 UPDATE Practice
-- ===================================================

-- Q1. Update the email of member 'Sameer Khan' to `sameer.k@mail.com`
UPDATE members SET email = 'sameer.k@mail.com' WHERE name = 'Sameer Khan';
-- Explanation: Updates the email address of the member named 'Sameer Khan'.

-- Q2. Change membership type of all Standard members to 'Premium'
UPDATE members SET membership_type = 'Premium' WHERE membership_type = 'Standard';
-- Explanation: Promotes all Standard members to Premium.

-- Q3. Set `fines_due` to 0 for member_id 204
UPDATE members SET fines_due = 0 WHERE member_id = 204;
-- Explanation: Clears the fines for Sameer Khan.

-- Q4. Update genre of 'Deep Work' to 'Self-help'
UPDATE books SET genre = 'Self-help' WHERE title = 'Deep Work';
-- Explanation: Corrects the genre to match related books.

-- Q5. Change availability of book_id 'B001' to 'Yes'
UPDATE books SET available = 'Yes' WHERE book_id = 'B001';
-- Explanation: Marks the book as available.

-- Q6. Update the issued_to of book 'The Alchemist' to member_id 205
UPDATE books SET issued_to = 205 WHERE title = 'The Alchemist';
-- Explanation: Assigns the book to member Ananya Joshi.

-- Q7. Set all NULL emails in the `members` table to 'unknown@mail.com'
UPDATE members SET email = 'unknown@mail.com' WHERE email IS NULL;
-- Explanation: Fills missing email fields with a placeholder.

-- Q8. Change name of member with member_id 202 to 'Arjun P. Singh'
UPDATE members SET name = 'Arjun P. Singh' WHERE member_id = 202;
-- Explanation: Updates member name with more details.

-- Q9. Set all Premium members' fines to 0
UPDATE members SET fines_due = 0 WHERE membership_type = 'Premium';
-- Explanation: Waives off fines for Premium members.

-- Q10. Update the title of book_id 'B007' to 'Nineteen Eighty-Four'
UPDATE books SET title = 'Nineteen Eighty-Four' WHERE book_id = 'B007';
-- Explanation: Replaces abbreviated title with full version.

-- ===================================================
-- 🔹 DELETE Practice
-- ===================================================

-- Q21. Delete the member whose name is 'Rahul Verma'
DELETE FROM members WHERE name = 'Rahul Verma';
-- Explanation: Removes the member record from the table.

-- Q22. Delete all members who have 0 fines and joined after '2023-05-01'
DELETE FROM members WHERE fines_due = 0 AND join_date > '2023-05-01';
-- Explanation: Removes recent members who don't owe fines.

-- Q23. Delete all books that are available and have no issued_to
DELETE FROM books WHERE available = 'Yes' AND issued_to IS NULL;
-- Explanation: Removes unissued books that are not in use.

-- Q24. Remove the book with title '1984'
DELETE FROM books WHERE title = '1984';
-- Explanation: Deletes the book titled '1984'.
-- Tip: If updated to 'Nineteen Eighty-Four', use that title.

-- Q25. Delete members with NULL emails
DELETE FROM members WHERE email IS NULL;
-- Explanation: Cleans up records with missing contact information.

-- ✅ End of Day 5 Practice
-- Today we practiced modifying and cleaning up records with UPDATE and DELETE.
-- Be cautious while running DELETE queries – use SELECT to verify rows before removing.

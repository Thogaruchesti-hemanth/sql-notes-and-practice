-- 📘 Day 27: Hotel Booking System
-- -------------------------------
-- Context: Managing hotel bookings, guests, and room assignments.
-- Today’s practice will involve understanding and analyzing hotel reservation data.

-- 👇 Below is the structure and sample data for two tables:
-- 1. guests
-- 2. bookings

-- ===================================================
-- Table: guests
-- ===================================================
-- | guest_id | full_name         | phone_number   | email                | country     | vip_status | date_joined |
-- |----------|-------------------|----------------|----------------------|-------------|------------|-------------|
-- | 1001     | Aarya Kapoor       | 9123456780     | aarya@mail.com       | India       | Yes        | 2022-04-15  |
-- | 1002     | John Mathews       | 9876543210     | john.m@mail.com      | USA         | No         | 2023-01-10  |
-- | 1003     | Haruto Tanaka      | 8194567801     | haruto@mail.jp       | Japan       | Yes        | 2021-12-22  |
-- | 1004     | Maria Gonzalez     | 6581239902     | maria.g@mail.es      | Spain       | No         | 2023-08-05  |
-- | 1005     | Chen Wei           | 861390001122   | chen.wei@mail.cn     | China       | Yes        | 2020-06-30  |
-- | 1006     | Priya Menon        | 9988776655     | priya.menon@mail.com | India       | No         | 2024-03-19  |
-- | 1007     | Omar Al-Farsi      | 7123409876     | omar@mail.sa         | Saudi Arabia| No         | 2023-11-01  |
-- | 1008     | Sophie Dubois      | 3367894321     | sophie.d@mail.fr     | France      | No         | 2022-10-09  |

-- ===================================================
-- Table: bookings
-- ===================================================
-- | booking_id | guest_id | room_number | room_type  | check_in   | check_out  | status     | total_amount | payment_method |
-- |------------|----------|-------------|------------|------------|------------|------------|--------------|----------------|
-- | B001       | 1001     | 101         | Deluxe     | 2024-01-05 | 2024-01-10 | Completed  | 18000.00     | Credit Card    |
-- | B002       | 1003     | 302         | Suite      | 2023-12-20 | 2023-12-28 | Completed  | 52000.00     | Bank Transfer  |
-- | B003       | 1002     | 202         | Standard   | 2024-05-12 | 2024-05-14 | Cancelled  | 0.00         | NULL           |
-- | B004       | 1004     | 105         | Deluxe     | 2024-06-15 | 2024-06-20 | Completed  | 17500.00     | Credit Card    |
-- | B005       | 1005     | 401         | Suite      | 2024-07-01 | 2024-07-10 | Active     | 63000.00     | PayPal         |
-- | B006       | 1006     | 203         | Standard   | 2024-06-25 | 2024-06-28 | No-Show    | 0.00         | NULL           |
-- | B007       | 1007     | 110         | Deluxe     | 2024-07-10 | 2024-07-15 | Active     | 19500.00     | Credit Card    |
-- | B008       | 1008     | 204         | Standard   | 2024-06-01 | 2024-06-03 | Completed  | 8500.00      | Debit Card     |
-- | B009       | 1001     | 301         | Suite      | 2023-11-15 | 2023-11-18 | Completed  | 27000.00     | UPI            |

-- 📝 Instructions:
-- Manually write SQL statements for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing `SELECT`, `JOIN`, `AGGREGATE`, `UPDATE`, `DELETE`, and more

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Basic Retrieval (Q1–Q5)
-- 1. Retrieve all guests from India.
-- 2. List all bookings that are currently marked as "Active".
-- 3. Show full names and emails of VIP guests only.
-- 4. Find all room numbers booked between '2024-06-01' and '2024-07-01'.
-- 5. Get a list of unique countries guests have come from.

-- 🔹 Aggregations and Sorting (Q6–Q10)
-- 6. Count how many guests joined after '2022-01-01'.
-- 7. What is the total revenue generated from all completed bookings?
-- 8. List all room types with their total booking counts.
-- 9. Find the highest amount paid in a single booking.
-- 10. Show the average amount paid per room_type for completed bookings.

-- 🔹 Filtering and Conditions (Q11–Q15)
-- 11. Find bookings where total_amount > 20000 and status is 'Completed'.
-- 12. List all bookings where payment_method is NULL.
-- 13. Show guests who made a booking but didn’t complete it (Cancelled or No-Show).
-- 14. Display guest names who have more than one booking.
-- 15. Find guests who have booked a 'Suite' room.

-- 🔹 JOIN Operations (Q16–Q22)
-- 16. Join guests and bookings to show full_name, room_number, and total_amount.
-- 17. List all guests and their most recent booking's check_in date.
-- 18. Display guest full_name and the type of room they booked, sorted by check_out descending.
-- 19. Show bookings made by guests from France.
-- 20. Display each guest's name along with number of completed bookings.
-- 21. For each booking, show guest email and payment_method.
-- 22. Show all guest names who have never completed any booking.

-- 🔹 Update and Delete Practice (Q23–Q28)
-- 23. Update the payment_method for NULL entries to 'Cash'.
-- 24. Mark all bookings before '2023-01-01' as 'Archived'.
-- 25. Change room_type from 'Standard' to 'Economy' for all future bookings.
-- 26. Delete all No-Show bookings.
-- 27. Delete guests who never made a booking.
-- 28. Update vip_status to 'No' for guests who have no completed bookings.

-- 🔹 Advanced SQL Logic (Q29–Q35)
-- 29. Rank guests based on total amount spent in descending order.
-- 30. Retrieve the guest who has spent the most across all bookings.
-- 31. Show room_type-wise average stay duration.
-- 32. List guests who have both a 'Suite' and a 'Deluxe' booking history.
-- 33. Calculate how many bookings each payment_method has handled.
-- 34. Identify repeat guests with at least 2 bookings in different room types.
-- 35. For each country, show the number of VIP guests and total revenue generated.

-- ✅ End of Day 27 Practice
-- Great work! You’ve covered a complete real-world scenario involving guests and bookings.
-- Tomorrow, we’ll move into Day 28 — Final Capstone Project — where you’ll apply everything you've learned.

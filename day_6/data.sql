-- 📘 Day 6: DISTINCT, COUNT, MIN, MAX
-- -----------------------------------
-- Context: Online music streaming platform tracking users and the songs they play.
-- Today’s practice focuses on retrieving unique values and applying aggregate functions
-- to understand trends and user behaviors.

-- 👇 Below is the structure and sample data for two tables:
-- 1. users
-- 2. play_history

-- ===================================================
-- Table: users
-- ===================================================
-- | user_id | name            | country     | join_date  | subscription_type |
-- |---------|------------------|-------------|------------|--------------------|
-- | 101     | Aanya Sharma     | India       | 2022-01-12 | Free               |
-- | 102     | Ben Watson       | USA         | 2021-09-30 | Premium            |
-- | 103     | Chen Liu         | China       | 2023-03-22 | Free               |
-- | 104     | Deepak Verma     | India       | 2022-11-15 | Premium            |
-- | 105     | Elena Rodriguez  | Spain       | 2023-01-05 | Free               |
-- | 106     | Fatima Noor      | UAE         | 2022-07-19 | Premium            |
-- | 107     | George Kim       | South Korea | 2021-12-25 | Free               |

-- ===================================================
-- Table: play_history
-- ===================================================
-- | play_id | user_id | song_title            | artist            | genre       | duration_sec | play_date  |
-- |---------|---------|------------------------|-------------------|-------------|--------------|------------|
-- | 1001    | 101     | Blinding Lights        | The Weeknd        | Pop         | 200          | 2023-06-01 |
-- | 1002    | 102     | Shape of You           | Ed Sheeran        | Pop         | 240          | 2023-06-02 |
-- | 1003    | 103     | Believer               | Imagine Dragons   | Rock        | 220          | 2023-06-03 |
-- | 1004    | 104     | Peaches                | Justin Bieber     | R&B         | 190          | 2023-06-04 |
-- | 1005    | 101     | Perfect                | Ed Sheeran        | Pop         | 210          | 2023-06-05 |
-- | 1006    | 105     | Thunder                | Imagine Dragons   | Rock        | 215          | 2023-06-06 |
-- | 1007    | 106     | Industry Baby          | Lil Nas X         | Hip-Hop     | 230          | 2023-06-06 |
-- | 1008    | 107     | Stay                   | The Kid LAROI     | Pop         | 180          | 2023-06-07 |
-- | 1009    | 104     | As It Was              | Harry Styles      | Pop         | 195          | 2023-06-07 |
-- | 1010    | 102     | Heat Waves             | Glass Animals     | Indie       | 250          | 2023-06-08 |
-- | 1011    | 106     | Levitating             | Dua Lipa          | Pop         | 200          | 2023-06-09 |
-- | 1012    | 103     | Natural                | Imagine Dragons   | Rock        | 205          | 2023-06-09 |
-- | 1013    | 101     | Peaches                | Justin Bieber     | R&B         | 190          | 2023-06-10 |

-- 📝 Instructions:
-- - Write SQL statements manually to create the above tables and insert data.
-- - Practice using `DISTINCT`, `COUNT`, `MIN`, and `MAX` functions on the provided data.

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 DISTINCT (Q1–Q10)
-- 1. List all distinct countries of users.
-- 2. Find all unique genres in the play_history.
-- 3. Get all unique subscription types.
-- 4. Show all distinct artists from the play_history.
-- 5. How many unique song titles have been played?
-- 6. List the different song titles played by user_id 101.
-- 7. Find distinct users who have played a song in the genre 'Pop'.
-- 8. How many distinct genres are there?
-- 9. List distinct play_dates when user_id 104 played songs.
-- 10. Get all different artist names starting with the letter ‘I’.

-- 🔹 COUNT (Q11–Q20)
-- 11. Count total number of users.
-- 12. Count how many songs were played in total.
-- 13. How many songs has each user played?
-- 14. Count the number of Pop songs played.
-- 15. How many users are from India?
-- 16. How many unique users listened to ‘Imagine Dragons’?
-- 17. Count the number of songs played on '2023-06-06'.
-- 18. Count how many users have a Premium subscription.
-- 19. Count how many times ‘Peaches’ was played.
-- 20. Count the number of songs in each genre.

-- 🔹 MIN / MAX (Q21–Q30)
-- 21. Find the shortest song duration in the dataset.
-- 22. Find the longest song duration in the dataset.
-- 23. What is the earliest play_date recorded?
-- 24. What is the latest play_date recorded?
-- 25. Find the minimum and maximum number of plays per user.
-- 26. What is the shortest song by 'Ed Sheeran'?
-- 27. What is the longest song by 'Imagine Dragons'?
-- 28. Find the earliest join_date among all users.
-- 29. What is the most recent join_date in the users table?
-- 30. Find the minimum and maximum duration of Pop songs.

-- 🔹 Combination (Q31–Q35)
-- 31. How many distinct artists are there in each genre?
-- 32. For each user, show the maximum duration song they’ve played.
-- 33. Show the minimum duration song for each genre.
-- 34. Count the number of songs per artist, only for 'Rock' genre.
-- 35. For each subscription type, count the total users and the countries they are from.

-- ✅ End of Day 6 Practice
-- Get comfortable with identifying unique values and aggregating insights using COUNT, MIN, MAX.
-- Tomorrow will be: 📘 Day 7 - Review + Practice Set

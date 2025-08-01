-- 📘 Day 6: DISTINCT, COUNT, MIN, MAX
-- ----------------------------------------
-- Context: Online music streaming platform tracking users and the songs they play.
-- Today’s practice focuses on retrieving unique values and applying aggregate functions
-- to understand trends and user behaviors.

-- ===================================================
-- ✅ SCHEMA: Create Tables
-- ===================================================

-- Q1. Create the users table
CREATE TABLE users (
  user_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  join_date DATE NOT NULL,
  subscription_type VARCHAR(100)
);

-- Q2. Create the play_history table
CREATE TABLE play_history (
  play_id INT PRIMARY KEY,
  user_id INT NOT NULL,
  song_title VARCHAR(255) NOT NULL,
  artist VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  duration_sec INT NOT NULL,
  play_date DATE NOT NULL
);

-- Q3. Insert sample data into users
INSERT INTO users (user_id, name, country, join_date, subscription_type) VALUES 
(101,'Aanya Sharma','India','2022-01-12','Free'),
(102,'Ben Watson','USA','2021-09-30','Premium'),
(103,'Chen Liu','China','2023-03-22','Free'),
(104,'Deepak Verma','India','2022-11-15','Premium'),
(105,'Elena Rodriguez','Spain','2023-01-05','Free'),
(106,'Fatima Noor','UAE','2022-07-19','Premium'),
(107,'George Kim','South Korea','2021-12-25','Free');

-- Q4. Insert sample data into play_history
INSERT INTO play_history (play_id, user_id, song_title, artist, genre, duration_sec, play_date) VALUES
(1001, 101, 'Blinding Lights', 'The Weeknd', 'Pop', 200, '2023-06-01'),
(1002, 102, 'Shape of You', 'Ed Sheeran', 'Pop', 240, '2023-06-02'),
(1003, 103, 'Believer', 'Imagine Dragons', 'Rock', 220, '2023-06-03'),
(1004, 104, 'Peaches', 'Justin Bieber', 'R&B', 190, '2023-06-04'),
(1005, 101, 'Perfect', 'Ed Sheeran', 'Pop', 210, '2023-06-05'),
(1006, 105, 'Thunder', 'Imagine Dragons', 'Rock', 215, '2023-06-06'),
(1007, 106, 'Industry Baby', 'Lil Nas X', 'Hip-Hop', 230, '2023-06-06'),
(1008, 107, 'Stay', 'The Kid LAROI', 'Pop', 180, '2023-06-07'),
(1009, 104, 'As It Was', 'Harry Styles', 'Pop', 195, '2023-06-07'),
(1010, 102, 'Heat Waves', 'Glass Animals', 'Indie', 250, '2023-06-08'),
(1011, 106, 'Levitating', 'Dua Lipa', 'Pop', 200, '2023-06-09'),
(1012, 103, 'Natural', 'Imagine Dragons', 'Rock', 205, '2023-06-09'),
(1013, 101, 'Peaches', 'Justin Bieber', 'R&B', 190, '2023-06-10');

-- ===================================================
-- 🔹 DISTINCT Practice
-- ===================================================

-- Q1. List all distinct countries of users
SELECT DISTINCT country FROM users;

-- Q2. Find all unique genres in the play_history
SELECT DISTINCT genre FROM play_history;

-- Q3. Get all unique subscription types
SELECT DISTINCT subscription_type FROM users;

-- Q4. Show all distinct artists from the play_history
SELECT DISTINCT artist FROM play_history;

-- Q5. How many unique song titles have been played?
SELECT COUNT(DISTINCT song_title) AS unique_song_count FROM play_history;

-- Q6. List the different song titles played by user_id 101
SELECT DISTINCT song_title FROM play_history WHERE user_id = 101;

-- Q7. Find distinct users who have played a song in the genre 'Pop'
SELECT DISTINCT user_id FROM play_history WHERE genre = 'Pop';

-- Q8. How many distinct genres are there?
SELECT COUNT(DISTINCT genre) FROM play_history;

-- Q9. List distinct play_dates when user_id 104 played songs
SELECT DISTINCT play_date FROM play_history WHERE user_id = 104;

-- Q10. Get all different artist names starting with the letter ‘I’
SELECT DISTINCT artist FROM play_history WHERE artist LIKE 'I%';

-- ===================================================
-- 🔹 COUNT Practice
-- ===================================================

-- Q11. Count total number of users
SELECT COUNT(*) AS total_number_of_users FROM users;

-- Q12. Count how many songs were played in total
SELECT COUNT(*) AS total_songs FROM play_history;

-- Q13. How many songs has each user played?
SELECT user_id, COUNT(*) AS total_songs_played FROM play_history GROUP BY user_id;

-- Q14. Count the number of Pop songs played
SELECT COUNT(*) AS total_pop_songs FROM play_history WHERE genre = 'Pop';

-- Q15. How many users are from India?
SELECT COUNT(*) AS total_users_from_india FROM users WHERE country = 'India';

-- Q16. How many unique users listened to ‘Imagine Dragons’?
SELECT COUNT(DISTINCT user_id) AS unique_users FROM play_history WHERE artist = 'Imagine Dragons';

-- Q17. Count the number of songs played on '2023-06-06'
SELECT COUNT(*) AS total_songs_played FROM play_history WHERE play_date = '2023-06-06';

-- Q18. Count how many users have a Premium subscription
SELECT COUNT(*) AS total_premium_users FROM users WHERE subscription_type = 'Premium';

-- Q19. Count how many times ‘Peaches’ was played
SELECT COUNT(*) AS peaches_played FROM play_history WHERE song_title = 'Peaches';

-- Q20. Count the number of songs in each genre
SELECT genre, COUNT(*) AS no_of_songs FROM play_history GROUP BY genre;

-- ===================================================
-- 🔹 MIN / MAX Practice
-- ===================================================

-- Q21. Find the shortest song duration in the dataset
SELECT MIN(duration_sec) FROM play_history;

-- Q22. Find the longest song duration in the dataset
SELECT MAX(duration_sec) FROM play_history;

-- Q23. What is the earliest play_date recorded?
SELECT MIN(play_date) FROM play_history;

-- Q24. What is the latest play_date recorded?
SELECT MAX(play_date) FROM play_history;

-- Q25. Find the minimum and maximum number of plays per user
SELECT 
  MIN(play_count) AS min_plays_per_user,
  MAX(play_count) AS max_plays_per_user
FROM (
  SELECT user_id, COUNT(*) AS play_count
  FROM play_history
  GROUP BY user_id
) AS user_play_counts;

-- Q26. What is the shortest song by 'Ed Sheeran'?
SELECT MIN(duration_sec) FROM play_history WHERE artist = 'Ed Sheeran';

-- Q27. What is the longest song by 'Imagine Dragons'?
SELECT MAX(duration_sec) FROM play_history WHERE artist = 'Imagine Dragons';

-- Q28. Find the earliest join_date among all users
SELECT MIN(join_date) FROM users;

-- Q29. What is the most recent join_date in the users table?
SELECT MAX(join_date) FROM users;

-- Q30. Find the minimum and maximum duration of Pop songs
SELECT MIN(duration_sec), MAX(duration_sec) FROM play_history WHERE genre = 'Pop';

-- ===================================================
-- 🔹 Combination Practice
-- ===================================================

-- Q31. How many distinct artists are there in each genre?
SELECT genre, COUNT(DISTINCT artist) AS distinct_artist FROM play_history GROUP BY genre;

-- Q32. For each user, show the maximum duration song they’ve played
SELECT user_id, MAX(duration_sec) AS max_duration FROM play_history GROUP BY user_id;

-- Q33. Show the minimum duration song for each genre
SELECT genre, MIN(duration_sec) FROM play_history GROUP BY genre;

-- Q34. Count the number of songs per artist, only for 'Rock' genre
SELECT artist, COUNT(*) AS song_count FROM play_history WHERE genre = 'Rock' GROUP BY artist;

-- Q35. For each subscription type, count the total users and the countries they are from
SELECT 
  subscription_type,
  COUNT(*) AS total_users,
  GROUP_CONCAT(DISTINCT country) AS countries
FROM users
GROUP BY subscription_type;

-- ✅ End of Day 6 Practice
-- Great job practicing DISTINCT, COUNT, MIN, and MAX. Up next: Day 7 Review + Practice Set.

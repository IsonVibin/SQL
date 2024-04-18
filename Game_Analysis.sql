create database game_anaysis;

-- Problem Statement - Game Analysis dataset
-- 1) Players play a game divided into 3-levels (L0,L1 and L2)
-- 2) Each level has 3 difficulty levels (Low,Medium,High)
-- 3) At each level,players have to kill the opponents using guns/physical fight
-- 4) Each level has multiple stages at each difficulty level.
-- 5) A player can only play L1 using its system generated L1_code.
-- 6) Only players who have played Level1 can possibly play Level2 
--    using its system generated L2_code.
-- 7) By default, a player can play L0.
-- 8) Each player can login to the game using a Dev_ID.
-- 9) Players can earn extra lives at each stage in a level.

 -- Player Details Table
CREATE TABLE pd (
    P_ID INT PRIMARY KEY,
    PName VARCHAR(50),
    L1_status INT,
    L2_status INT,
    L1_code VARCHAR(20),
    L2_code VARCHAR(20)
);

-- Level Details Table
CREATE TABLE ld (
    P_ID INT,
    Dev_ID VARCHAR(20),
    start_time DATETIME,
    stages_crossed INT,
    level INT,
    difficulty VARCHAR(20),
    kill_count INT,
    headshots_count INT,
    score INT,
    lives_earned INT
);

-- Player Details Table
INSERT INTO pd(P_ID, PName, L1_Status, L2_Status, L1_Code, L2_Code) VALUES
(656, 'sloppy-denim-wolfhound', 1, 0, 'war_zone', NULL),
(358, 'skinny-grey-quetzal', 0, 0, NULL, NULL),
(296, 'silly-taupe-ray', 1, 0, 'war_zone', NULL),
(644, 'randy-turquoise-scorpion', 1, 1, 'speed_blitz', 'cosmic_vision'),
(320, 'chewy-harlequin-gharial', 0, 0, NULL, NULL),
(632, 'dorky-heliotrope-barracuda', 1, 1, 'speed_blitz', 'splippery_slope'),
(428, 'leaky-magnolia-iguana', 1, 0, 'leap_of_faith', NULL),
(429, 'flabby-firebrick-bee', 1, 1, 'speed_blitz', 'cosmic_vision'),
(310, 'gloppy-tomato-wasp', 1, 1, 'war_zone', 'splippery_slope'),
(211, 'breezy-indigo-starfish', 1, 1, 'war_zone', 'splippery_slope'),
(319, 'chummy-flax-crab', 1, 0, 'speed_blitz', NULL),
(547, 'scanty-beige-ray', 1, 0, 'bulls_eye', NULL),
(376, 'pretty-champagne-spaniel', 0, 0, NULL, NULL),
(300, 'lanky-asparagus-gar', 1, 1, 'speed_blitz', 'cosmic_vision'),
(224, 'nippy-peach-neanderthal', 1, 1, 'war_zone', 'splippery_slope'),
(641, 'homey-alizarin-gar', 0, 0, NULL, NULL),
(430, 'messy-wisteria-termite', 1, 1, 'leap_of_faith', 'resurgence'),
(558, 'woozy-crimson-hound', 0, 0, NULL, NULL),
(463, 'messy-magnolia-woodpecker', 1, 0, 'war_zone', NULL),
(603, 'smelly-linen-leopard', 1, 1, 'war_zone', 'splippery_slope'),
(242, 'slaphappy-cinnamon-squirrel', 1, 0, 'bulls_eye', NULL),
(292, 'ugly-goldenrod-numbat', 1, 0, 'bulls_eye', NULL),
(590, 'stealthy-xanthic-cattle', 1, 1, 'war_zone', 'splippery_slope'),
(483, 'tasty-peach-fly', 1, 1, 'bulls_eye', 'cosmic_vision'),
(368, 'homely-vermilion-toad', 1, 1, 'war_zone', 'resurgence'),
(653, 'breezy-buff-tarantula', 1, 0, 'leap_of_faith', NULL),
(441, 'woozy-magenta-birman', 1, 0, 'speed_blitz', NULL),
(663, 'fuzzy-cornflower-whippet', 1, 1, 'bulls_eye', 'resurgence'),
(422, 'pasty-silver-raccoon', 1, 1, 'bulls_eye', 'splippery_slope'),
(683, 'craggy-ivory-dragonfly', 1, 1, 'speed_blitz', 'splippery_slope');

-- Level Details Table
-- Level Details Table (Level_Details)
INSERT INTO ld (P_ID, Dev_ID, start_time, stages_crossed, level, difficulty, kill_count, headshots_count, score, lives_earned)
VALUES
(644, 'zm_015', '2022-10-11 14:05:00', 3, 1, 'Medium', 11, 5, 350, 1),
(644, 'rf_015', '2022-10-11 19:34:00', 1, 1, 'Low', 7, 2, 150, 0),
(644, 'bd_017', '2022-10-12 23:52:00', 6, 2, 'Medium', 24, 16, 1750, 2),
(656, 'rf_013', '2022-10-15 18:12:00', 7, 0, 'Medium', 15, 8, 880, 0),
(656, 'bd_015', '2022-10-13 22:19:00', 4, 1, 'Low', 19, 13, 1450, 0),
(656, 'rf_017', '2022-10-14 07:32:00', 2, 1, 'Difficult', 3, 1, 280, 1),
(656, 'bd_013', '2022-10-11 17:47:00', 10, 1, 'Low', 18, 16, 2210, 3),
(296, 'zm_017', '2022-10-14 15:15:00', 2, 1, 'Difficult', 7, 3, 1040, 0),
(296, 'zm_015', '2022-10-14 19:35:00', 4, 1, 'Medium', 4, 0, 100, 0),
(632, 'bd_013', '2022-10-12 16:30:00', 5, 0, 'Difficult', 45, 30, 100, 0),
(632, 'rf_013', '2022-10-12 19:36:00', 5, 1, 'Medium', 28, 25, 100, 1),
(632, 'zm_017', '2022-10-13 06:30:00', 5, 2, 'Difficult', 4, 0, 100, 2),
(632, 'zm_015', '2022-10-13 10:56:00', 7, 2, 'Medium', 23, 20, 4950, 2),
(632, 'zm_017', '2022-10-14 23:41:00', 8, 2, 'Difficult', 30, 24, 5500, 4),
(428, 'bd_015', '2022-10-15 18:00:00', 3, 1, 'Low', 5, 3, 380, 0),
(429, 'rf_017', '2022-10-11 09:28:00', 2, 1, 'Difficult', 30, 27, 3500, 3),
(429, 'zm_017', '2022-10-11 21:39:00', 10, 2, 'Low', 30, 18, 3210, 0),
(429, 'bd_013', '2022-10-11 19:28:00', 6, 0, 'Medium', 14, 10, 1800, 1),
(429, 'zm_013', '2022-10-11 13:00:00', 7, 2, 'Difficult', 25, 20, 4710, 2),
(310, 'rf_017', '2022-10-11 15:15:00', 7, 1, 'Difficult', 20, 18, 5140, 3),
(310, 'bd_015', '2022-10-13 19:18:00', 5, 0, 'Difficult', 34, 30, 5300, 3),
(310, 'bd_013', '2022-10-15 23:30:00', 7, 2, 'Difficult', 14, 11, 3370, 2),
(211, 'bd_017', '2022-10-12 13:23:00', 4, 0, 'Low', 20, 15, 390, 2),
(211, 'bd_013', '2022-10-12 18:30:00', 5, 1, 'Difficult', 25, 15, 3200, 2),
(211, 'rf_013', '2022-10-13 05:36:00', 5, 1, 'Medium', 30, 11, 2700, 1),
(211, 'zm_015', '2022-10-13 22:30:00', 5, 2, 'Low', 14, 8, 2800, 0),
(211, 'zm_017', '2022-10-14 08:56:00', 7, 2, 'Medium', 9, 3, 750, 2),
(211, 'rf_017', '2022-10-15 11:41:00', 8, 2, 'Difficult', 15, 11, 1100, 1),
(319, 'zm_017', '2022-10-12 14:20:00', 7, 1, 'Low', 5, 3, 50, 0),
(547, 'rf_013', '2022-10-15 07:15:00', 2, 1, 'Low', 17, 11, 750, 0),
(547, 'zm_015', '2022-10-15 20:16:00', 5, 1, 'Low', 20, 9, 1600, 0),
(547, 'bd_013', '2022-10-15 02:19:00', 8, 1, 'Medium', 15, 8, 1100, 1),
(300, 'bd_013', '2022-10-11 19:19:00', 5, 1, 'Low', 25, 11, 540, 0),
(300, 'rf_013', '2022-10-11 05:20:00', 7, 1, 'Medium', 23, 17, 2300, 0),
(300, 'zm_015', '2022-10-12 11:21:00', 3, 0, 'Difficult', 14, 0, 1200, 0),
(300, 'zm_015', '2022-10-12 01:45:00', 2, 2, 'Medium', 4, 3, 230, 1),
(300, 'bd_013', '2022-10-13 23:15:00', 3, 2, 'Medium', 8, 4, 590, 1),
(224, 'rf_017', '2022-10-14 01:15:00', 7, 1, 'Medium', 20, 18, 5140, 0),
(224, 'bd_015', '2022-10-14 08:21:00', 5, 1, 'Difficult', 34, 30, 1300, 0),
(224, 'bd_013', '2022-10-15 05:30:00', 10, 2, 'Difficult', 30, 22, 5300, 4),
(224, 'bd_013', '2022-10-15 13:43:00', 4, 2, 'Difficult', 28, 25, 4570, 2),
(242, 'bd_013', '2022-10-13 01:14:00', 6, 1, 'Low', 21, 17, 2840, 0),
(242, 'zm_015', '2022-10-14 04:38:00', 8, 1, 'Low', 37, 26, 3470, 2),
(292, 'rf_013', '2022-10-12 04:29:00', 4, 1, 'Low', 21, 17, 1890, 0),
(292, 'rf_015', '2022-10-15 10:19:00', 5, 1, 'Medium', 4, 3, 670, 0),
(590, 'rf_013', '2022-10-12 19:23:00', 2, 1, 'Low', 10, 7, 1050, 0),
(590, 'bd_017', '2022-10-12 07:30:00', 3, 1, 'Low', 24, 18, 2400, 1),
(590, 'wd_019', '2022-10-13 04:20:00', 5, 2, 'Low', 17, 10, 1550, 0),
(590, 'rf_015', '2022-10-13 13:45:00', 3, 2, 'Medium', 9, 0, 900, 1),
(590, 'zm_017', '2022-10-14 06:31:00', 4, 2, 'Medium', 15, 8, 2100, 2),
(483, 'bd_015', '2022-10-11 22:20:00', 5, 1, 'Medium', 20, 17, 1050, 0),
(483, 'zm_013', '2022-10-12 19:30:00', 3, 1, 'Medium', 20, 10, 2350, 1),
(483, 'zm_017', '2022-10-11 14:33:00', 10, 2, 'Medium', 50, 43, 5490, 3),
(483, 'rf_015', '2022-10-12 02:40:00', 7, 2, 'Difficult', 19, 10, 3950, 1),
(483, 'wd_019', '2022-10-13 06:20:00', 8, 2, 'Difficult', 25, 16, 4390, 2),
(368, 'zm_015', '2022-10-12 01:14:00', 7, 1, 'Medium', 20, 18, 2040, 0),
(368, 'zm_017', '2022-10-12 04:20:00', 5, 1, 'Low', 14, 10, 1750, 0),
(368, 'bd_015', '2022-10-12 11:59:00', 6, 2, 'Difficult', 15, 8, 1950, 1),
(368, 'rf_013', '2022-10-15 14:47:00', 4, 2, 'Difficult', 24, 19, 2970, 2),
(663, 'bd_013', '2022-10-15 17:30:00', 5, 1, 'Difficult', 45, 30, 100, 0),
(663, 'rf_013', '2022-10-15 19:36:00', 5, 1, 'Medium', 28, 25, 100, 1),
(663, 'wd_019', '2022-10-15 06:30:00', 5, 2, 'Difficult', 4, 0, 100, 2),
(663, 'zm_015', '2022-10-15 09:56:00', 5, 2, 'Medium', 23, 20, 4950, 2),
(663, 'zm_017', '2022-10-15 23:41:00', 6, 2, 'Difficult', 30, 24, 5500, 4),
(683, 'bd_013', '2022-10-11 02:23:00', 4, 1, 'Low', 16, 11, 1390, 0),
(683, 'bd_015', '2022-10-11 18:45:00', 3, 1, 'Low', 21, 20, 3200, 2),
(683, 'rf_013', '2022-10-12 14:36:00', 7, 1, 'Medium', 16, 6, 1850, 0),
(683, 'rf_015', '2022-10-13 22:30:00', 5, 2, 'Medium', 25, 18, 2800, 0),
(683, 'zm_017', '2022-10-13 08:16:00', 7, 2, 'Difficult', 19, 13, 2750, 2),
(683, 'zm_017', '2022-10-15 16:10:00', 8, 2, 'Difficult', 20, 18, 4100, 3),
(683, 'zm_017', '2022-10-15 22:20:00', 5, 2, 'Difficult', 10, 6, 2050, 1),
(358, 'zm_017', '2022-10-14 05:05:00', 3, 0, 'Low', 4, 3, 70, 0),
(358, 'zm_013', '2022-10-14 18:23:00', 2, 0, 'Medium', 3, 1, 120, 0),
(641, 'rf_013', '2022-10-14 01:25:00', 4, 0, 'Low', 4, 3, 105, 0),
(641, 'rf_015', '2022-10-13 04:04:00', 2, 0, 'Medium', 2, 1, 40, 0),
(641, 'rf_013', '2022-10-14 23:19:00', 5, 0, 'Difficult', 8, 7, 235, 0),
(558, 'wd_019', '2022-10-12 23:19:00', 8, 0, 'Difficult', 21, 19, 635, 0);

--Checking the created tables.
select * from pd;
select * from ld;

-- Q1) Extract P_ID,Dev_ID,PName and Difficulty_level of all players at level 0.
SELECT pd.P_ID, ld.Dev_ID, pd.PName, ld.difficulty AS Difficulty_level
FROM pd
JOIN ld ON pd.P_ID = ld.P_ID
WHERE ld.level = 0;

-- Q2) Find Level1_code wise Avg_Kill_Count where lives_earned is 2 and atleast 3 stages are crossed.
SELECT L1_code, AVG(kill_count) AS Avg_Kill_Count
FROM pd
join ld on pd.P_ID=ld.P_ID
WHERE lives_earned = 2 AND stages_crossed >= 3
GROUP BY L1_code;

-- Q3) Find the total number of stages crossed at each diffuculty level
-- where for Level2 with players use zm_series devices. Arrange the result
-- in decsreasing order of total number of stages crossed.
SELECT ld.difficulty, SUM(ld.stages_crossed) AS Total_Stages_Crossed
FROM ld
JOIN pd ON ld.P_ID = pd.P_ID
WHERE ld.level = 2 AND ld.Dev_ID like 'zm%'
GROUP BY ld.difficulty
ORDER BY Total_Stages_Crossed DESC;

-- Q4) Extract P_ID and the total number of unique dates for those players 
-- who have played games on multiple days.
SELECT P_ID, COUNT(DISTINCT (start_time)) AS Unique_Dates
FROM ld
GROUP BY P_ID
HAVING COUNT(DISTINCT (start_time)) > 1;

-- Q5) Find P_ID and level wise sum of kill_counts where kill_count
-- is greater than avg kill count for the Medium difficulty.
SELECT P_ID, level, SUM(kill_count) AS Total_Kill_Count FROM ld
WHERE kill_count > (SELECT AVG(kill_count) FROM ld) AND difficulty = 'Medium'
GROUP BY P_ID, level order by P_ID;

-- Q6)  Find Level and its corresponding Level code wise sum of lives earned 
-- excluding level 0. Arrange in asecending order of level.
SELECT ld.level, pd.L1_code,SUM(ld.lives_earned) AS Total_Lives_Earned
FROM pd join ld on pd.P_ID = ld.P_ID
WHERE ld.level <> 0
GROUP BY ld.level,pd.L1_code
ORDER BY ld.level;

-- Q7) Find Top 3 score based on each dev_id and Rank them in increasing order
-- using Row_Number. Display difficulty as well. 
WITH TopScores AS (
    SELECT Dev_ID, score, difficulty,
           ROW_NUMBER() OVER (PARTITION BY Dev_ID ORDER BY score DESC) AS rank
    FROM ld
)
SELECT Dev_ID, score, difficulty
FROM TopScores
WHERE rank <= 3;

-- Q8) Find first_login datetime for each device id
SELECT Dev_ID, MIN(start_time) AS first_login
FROM ld
GROUP BY Dev_ID;

-- Q9) Find Top 5 score based on each difficulty level and Rank them in 
-- increasing order using Rank. Display dev_id as well.
WITH TopScores AS (
    SELECT Dev_ID, difficulty, score,
           RANK() OVER (PARTITION BY difficulty ORDER BY score DESC) AS rank
    FROM ld
)
SELECT Dev_ID, difficulty, score
FROM TopScores
WHERE rank <= 5;

-- Q10) Find the device ID that is first logged in(based on start_datetime) 
-- for each player(p_id). Output should contain player id, device id and 
-- first login datetime.
WITH FirstLogin AS (
    SELECT P_ID, Dev_ID, start_time,
           ROW_NUMBER() OVER (PARTITION BY P_ID ORDER BY start_time) AS login_rank
    FROM ld
)
SELECT P_ID, Dev_ID, start_time AS first_login_datetime
FROM FirstLogin
WHERE login_rank = 1;

select * from pd;
select * from ld;


-- Q11) For each player and date, determine how many `kill_counts` were played by the player so far.
-- a) Using window function
SELECT P_ID,start_time,
       SUM(kill_count) OVER (PARTITION BY P_ID ORDER BY start_time) AS Total_Kill_Count
FROM ld;

-- b) Without using window function
SELECT P_ID, start_time, SUM(kill_count) AS Total_Kill_Count
FROM ld
GROUP BY P_ID, start_time;

-- Q12) Find the cumulative sum of stages crossed over start_datetime for each P_ID, 
--excluding the most recent start_datetime.
WITH CumulativeSum AS (
    SELECT P_ID, start_time, stages_crossed,
           ROW_NUMBER() OVER (PARTITION BY P_ID ORDER BY start_time DESC) AS row_num
    FROM ld
)
SELECT P_ID, start_time, stages_crossed,
       SUM(stages_crossed) OVER (PARTITION BY P_ID ORDER BY start_time DESC) AS Cumulative_Stages_Crossed
FROM CumulativeSum
WHERE row_num > 1;

-- Q13) Extract the top 3 highest sums of scores for each `Dev_ID` and the corresponding `P_ID`.
WITH TopScores AS (
    SELECT Dev_ID, P_ID, SUM(score) AS Total_Score,
           RANK() OVER (PARTITION BY Dev_ID ORDER BY SUM(score) DESC) AS rank
    FROM ld
    GROUP BY Dev_ID, P_ID
)
SELECT Dev_ID, P_ID, Total_Score
FROM TopScores
WHERE rank <= 3;

-- Q14) Find players who scored more than 50% of the average score, scored by the sum of
--scores for each `P_ID`.
WITH PlayerAvgScore AS (
    SELECT P_ID, AVG(score) AS Avg_Score
    FROM ld
    GROUP BY P_ID
)
SELECT ld.P_ID, ld.score
FROM ld
JOIN PlayerAvgScore ON ld.P_ID = PlayerAvgScore.P_ID
WHERE ld.score > 0.5 * PlayerAvgScore.Avg_Score;


-- Q15) Create a stored procedure to find the top `n` `headshots_count` based on each `Dev_ID`
--and rank them in increasing order using `Row_Number`. Display the difficulty as well.
CREATE PROCEDURE GetTopNHeadshotsCount (@n INT)
AS
BEGIN
    WITH TopHeadshots AS (
        SELECT Dev_ID, difficulty, headshots_count,
               ROW_NUMBER() OVER (PARTITION BY Dev_ID ORDER BY headshots_count DESC) AS rank
        FROM ld
    )
    SELECT Dev_ID, difficulty, headshots_count
    FROM TopHeadshots
    WHERE rank <= @n;
END;

EXEC GetTopNHeadshotsCount @n = 5;

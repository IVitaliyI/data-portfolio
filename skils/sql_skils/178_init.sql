-- Table: Scores

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | score       | decimal |
-- +-------------+---------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains the score of a game. Score is a floating point value with two decimal places.

-- Example 1:

-- Input: 
-- Scores table:
-- +----+-------+
-- | id | score |
-- +----+-------+
-- | 1  | 3.50  |
-- | 2  | 3.65  |
-- | 3  | 4.00  |
-- | 4  | 3.85  |
-- | 5  | 4.00  |
-- | 6  | 3.65  |
-- +----+-------+
-- Output: 
-- +-------+------+
-- | score | rank |
-- +-------+------+
-- | 4.00  | 1    |
-- | 4.00  | 1    |
-- | 3.85  | 2    |
-- | 3.65  | 3    |
-- | 3.65  | 3    |
-- | 3.50  | 4    |
-- +-------+------+

CREATE DATABASE "178_Rank_Scores";

DROP TABLE IF EXISTS Scores;

CREATE TABLE Scores (
    id INTEGER PRIMARY KEY,
    score DECIMAL
);

-- Example 1
INSERT INTO Scores(id, score) VALUES
(1, 3.5),
(2, 3.65),
(3, 4),
(4, 3.85),
(5, 4),
(6, 3.65);
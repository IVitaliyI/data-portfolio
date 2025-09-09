-- Active: 1756976640384@@127.0.0.1@5432@leetcodetask
-- Table: Logs

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | num         | varchar |
-- +-------------+---------+
-- In SQL, id is the primary key for this table.
-- id is an autoincrement column starting from 1.

DROP TABLE IF EXISTS Logs;

CREATE TABLE Logs (
    id INTEGER PRIMARY KEY,
    num VARCHAR
);

INSERT INTO Logs(id, num) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2);
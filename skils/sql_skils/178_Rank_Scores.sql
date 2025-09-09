-- Active: 1756976640384@@127.0.0.1@5432@178_Rank_Scores
-- Write your PostgreSQL query statement below


SELECT s.score, r.row AS rank 
FROM Scores AS s
JOIN (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY score DESC) AS ROW,
        score
    FROM (
        SELECT DISTINCT score
        FROM Scores
    ) AS t
) AS r
ON s.score = r.score
ORDER BY rank ASC


SELECT COUNT(S2.score) 
FROM (SELECT DISTINCT score FROM SCORES) S2


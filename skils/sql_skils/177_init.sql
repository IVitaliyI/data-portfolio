-- Active: 1756976640384@@127.0.0.1@5432@177_Nth_highest_salary

-- Table: Employee

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | salary      | int  |
-- +-------------+------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains information about the salary of an employee.

CREATE DATABASE "177_Nth_highest_salary"

DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee(
    id INTEGER PRIMARY KEY,
    salary INTEGER
);

-- Example 1
INSERT INTO Employee(id, salary) VALUES
(1, 100),
(2, 200),
(3, 300);

-- Example 2

INSERT INTP Empoloee(id, salary) VALUES
(1, 100);
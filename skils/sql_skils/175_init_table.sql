

-- CREATE DATABASE "175_combine_two_tables";

DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    personId   INTEGER       PRIMARY KEY,
    lastName   VARCHAR(128),
    firstName  VARCHAR(128)
);

CREATE TABLE Address (
    addressId   INTEGER     PRIMARY KEY,
    personId    INTEGER,
    city        VARCHAR(128),
    state       VARCHAR(128)
);

INSERT INTO Person(personId, lastName, firstName) VALUES
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob');

INSERT INTO Address (addressId, personId, city, state) VALUES
(1, 2, 'New York City', 'New York'),
(2, 3, 'Leetcode', 'California');

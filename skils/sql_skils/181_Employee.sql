
SELECT t.name AS Employee
FROM Employee E
RIGHT JOIN (
    SELECT name, salary AS mangerSalary, managerId
    FROM Employee
    WHERE managerId IS NOT NULL
    ) t 
ON (E.id = t.managerId)
WHERE salary < mangerSalary
CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) 
RETURNS TABLE (Salary INT) AS $$
BEGIN
    IF N IS NULL OR N <= 0 THEN 
        RETURN QUERY SELECT NULL::INT;
        RETURN;
    END IF;

    RETURN QUERY
    SELECT (
        SELECT DISTINCT Employee.salary
        FROM Employee
        ORDER BY Employee.salary DESC
        OFFSET N - 1 LIMIT 1
    ) AS Salary;
END;
$$ LANGUAGE plpgsql;


SELECT * FROM NthHighestSalary(1);
CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    -- Write your PostgreSQL query statement below.
    SELECT DISTINCT Employee.salary
    FROM Employee
    ORDER BY Employee.salary DESC
    OFFSET N - 1 LIMIT 1
  );
END;
$$ LANGUAGE plpgsql;


SELECT * FROM NthHighestSalary(2);
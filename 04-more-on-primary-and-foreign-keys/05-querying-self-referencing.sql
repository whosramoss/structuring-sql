SELECT *
FROM employees AS e1
INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id;
-- if the condition is true we join the two columns so the employee with the supervisor, so we can join tables with themself
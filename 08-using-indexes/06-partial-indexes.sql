-- only working for postgresql
CREATE INDEX salaryidx2 ON users (salary)
WHERE salary > 12000;
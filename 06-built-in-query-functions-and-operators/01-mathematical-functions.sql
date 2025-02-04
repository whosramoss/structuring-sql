-- SELECT price * billing_frequency AS annual_revenue
-- FROM memberships;

-- SELECT SUM(price * billing_frequency) AS annual_revenue
-- FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUD()
-- TRUNC() TRUNCATE() mysql

-- SELECT CEIL(consumption) 
-- FROM memberships;

-- SELECT ROUND(consumption, 1) 
-- FROM memberships;

SELECT TRUNC(consumption, 0) 
FROM memberships;
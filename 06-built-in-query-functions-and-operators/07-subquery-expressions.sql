-- SELECT first_name, last_name
-- FROM customers
-- WHERE email = 'max@test.com';

-- SELECT EXISTS(
--  SELECT first_name, last_name
--  FROM customers
--  WHERE email = 'ma@test.com'
-- );

SELECT o.id FROM orders AS o 
WHERE EXISTS(
 SELECT email FROM customers AS c
 WHERE c.id = o.customer_id AND c.email = 'max@test.com'
);
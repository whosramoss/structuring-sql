-- SELECT * FROM users
-- WHERE id < 3 -- OR id > 5
-- UNION
-- SELECT * FROM users
-- WHERE id > 5;

-- error => when using union you need to have the same number of columns
-- SELECT * FROM users
-- UNION
-- SELECT * FROM addresses;

SELECT id, first_name FROM users
UNION
SELECT id, street FROM addresses;


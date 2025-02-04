-- SELECT u.id, first_name, last_name, street, house_number, city_id
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id;

-- need to add table.column when tables have same column name

-- joining data from multiple tabless
SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities as c ON a.city_id = c.id;
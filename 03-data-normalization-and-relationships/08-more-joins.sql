SELECT c.name AS city_name, u.first_name, u.last_name 
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u on u.address_id = a.id
-- WHERE first_name IS NOT NULL; 
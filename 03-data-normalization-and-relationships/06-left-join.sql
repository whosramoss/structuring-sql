SELECT * 
FROM addresses AS a -- all rows
LEFT JOIN users AS u ON a.id = u.address_id -- rows matching condition
LEFT JOIN cities AS c on c.id = a.city_id;

SELECT * 
FROM users AS u -- all rows
RIGHT JOIN addresses AS a ON a.id = u.address_id -- rows matching condition
LEFT JOIN cities AS c on c.id = a.city_id;
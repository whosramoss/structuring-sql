-- combination of an aggregate function and a normal identifier in a SELECT statement
-- SELECT booking_date, SUM(num_guests)
-- FROM bookings
-- GROUP BY booking_date;

-- SELECT p.name, SUM(b.num_guests)
-- FROM payment_methods AS p
-- INNER JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name;

SELECT p.name, b.booking_date, SUM(b.num_guests), ROUND(AVG(b.amount_tipped))
FROM payment_methods AS p
INNER JOIN bookings AS b ON p.id = b.payment_id
GROUP BY p.name, b.booking_date;
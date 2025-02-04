-- SELECT booking_date, COUNT(booking_date)
-- FROM bookings
-- WHERE amount_billed > 30
-- -- WHERE SUM(amount_billed)> 30 => need to use HAVING in this case and after GROUP BY
-- GROUP BY booking_date;

SELECT booking_date, COUNT(booking_date)
FROM bookings
-- HAVING SUM(amount_billed) > 30 => after GROUP BY
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;
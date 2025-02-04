-- INSERT INTO sales (customer_name, product_name, volume, is_recurring)
-- VALUES ('Mathis Humbert', 'A Book', 12.99, TRUE);

INSERT INTO sales(date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
VALUES 
(NULL, 'Lisa Mora', 'Course Bundle', 2889.62, FALSE, FALSE),
('2022-09-24', 'Muriel Humbert', 'Trucks', 400000.0, FALSE, TRUE)
;
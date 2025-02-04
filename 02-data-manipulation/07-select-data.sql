-- SELECT * FROM sales;

-- SELECT customer_name, product_name, volume, date_created
-- FROM sales;

SELECT 
 'Hello World',
 15000,
 customer_name, 
 product_name, 
 volume / 1000 AS total_sales, 
 date_created
FROM sales;
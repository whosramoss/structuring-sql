-- Task 1: Create Database

-- CREATE DATABASE online_shop;

-- connect to the right database

-- Task 2 + 3: Create and configure table

-- CREATE TABLE products (
--  name VARCHAR(200),
--  price NUMERIC(10, 2), -- 8.99 or 12345.99
--  description TEXT,
--  amount_in_stock SMALLINT,
--  image_path VARCHAR(500)
-- );

-- Task 4: Inserting dummy data

-- INSERT INTO products (name, price, description, amount_in_stock, image_path) 
-- VALUES (
--  'new balance 990v3', 
--  250.00, 
--  'Les designers originaux de la 990 devaient créer la meilleure chaussure de running du marché. Le produit fini a dépassé toutes leurs attentes. Lors de sa mise en vente en 1982, la 990 arborait un schéma de couleur gris élégamment sobre et un prix à trois chiffres jusque-là inédit.', 
--  17, 
--  'https://nb.scene7.com/is/image/NB/m990al3_nb_02_i?$pdpflexf2$&wid=440&hei=440'
--  );

-- Task 5: Add constraints

-- mysql
-- ALTER TABLE products
-- MODIFY COLUMN name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10, 2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock >= 0);

-- postgresql
-- ALTER TABLE products
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);

-- Task 6: Add id COLUMN

ALTER TABLE products
-- mysql
-- ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
--postgresql
ADD COLUMN id SERIAL PRIMARY KEY;
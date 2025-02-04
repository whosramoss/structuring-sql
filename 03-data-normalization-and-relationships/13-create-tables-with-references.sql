CREATE TABLE addresses (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY,--postresql
 street VARCHAR(300) NOT NULL,
 house_number VARCHAR(50) NOT NULL,
 city_id INT NOT NULL
);

CREATE TABLE users (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY,--postresql
 first_name VARCHAR(300) NOT NULL,
 last_name VARCHAR(300) NOT NULL,
 email VARCHAR(300) NOT NULL,
 address_id INT REFERENCES addresses (id) ON DELETE CASCADE -- postgresql
 -- FOREIGN KEY address_id REFERENCES addresses (id) ON DELETE CASCADE -- mysql
);

CREATE TABLE cities (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY,--postresql
 name VARCHAR(300) NOT NULL
);
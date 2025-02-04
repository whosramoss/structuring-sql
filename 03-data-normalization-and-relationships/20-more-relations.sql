CREATE TABLE company_buildings (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY, -- psotgresql
 name VARCHAR(300) NOT NULL
);

-- many teams for a single building so we create the relation between them on the teams because one team has only one building
CREATE TABLE teams (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY, -- psotgresql
 name VARCHAR(300) NOT NULL,
 building_id INT REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY, -- psotgresql
 first_name VARCHAR(300) NOT NULL,
 last_name VARCHAR(300) NOT NULL,
 birthdate DATE NOT NULL,
 -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE
 email VARCHAR(200) UNIQUE NOT NULL,
 team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

-- intranet_accounts relies on the employees so it has to be defined after the employees / One to One relationship
CREATE TABLE intranet_accounts (
 -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
 id SERIAL PRIMARY KEY, -- psotgresql
 email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
 password VARCHAR(200) NOT NULL
);
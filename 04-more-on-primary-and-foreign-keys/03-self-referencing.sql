CREATE TABLE employees (
 id SERIAL PRIMARY KEY,
 fist_name VARCHAR(300) NOT NULL,
 last_name VARCHAR(300) NOT NULL,
 supervisor_id INT REFERENCES employees -- (id) since it's primray key column it can be omited
 ON DELETE SET NULL
);
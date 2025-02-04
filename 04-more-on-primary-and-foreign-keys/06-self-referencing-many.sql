CREATE TABLE users (
 id SERIAL PRIMARY KEY,
 first_name VARCHAR(300) NOT NULL
 -- ...
);

-- intermediate self referencing table
CREATE TABLE users_friends (
 user_id INT REFERENCES users ON DELETE CASCADE,
 friend_id INT REFERENCES users ON DELETE CASCADE,
 CHECK(user_id < friend_id),
 PRIMARY KEY (user_id, friend_id) -- composite primary key
);

-- 1 & 2 so then we don't also want 2 & 1, 2 rows expressing the same relation => CHECK
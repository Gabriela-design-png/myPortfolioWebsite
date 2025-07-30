CREATE TABLE IF NOT EXISTS users (
 id SERIAL PRIMARY KEY, 
 username VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 password_hash VARCHAR(255) NOT NULL
);

ALTER TABLE users ADD COLUMN password_hash VARCHAR(255) NOT NULL;

INSERT INTO users (username, email, password_hash) VALUES 
('john_doe', 'john@example.com', 'hashed_password_1'),

('jane_doe', 'jane@example.com', 'hashed_password_2'),
('alice_smith', 'alice@example.com', 'hashed_password_3');

UPDATE users SET password_hash = 'default_hash' WHERE password_hash IS NULL;

-- Your tables and sample data.
-- The server imports this file into YOUR database whenever it changes
-- (that resets the tables, so keep your sample data in here).
-- Do NOT add CREATE DATABASE or USE lines; the server picks the database for you.

CREATE TABLE notes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO notes (title) VALUES
  ('Welcome! This note came from database.sql'),
  ('Edit or delete me to test your API');

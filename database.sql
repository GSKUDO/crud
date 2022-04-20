CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE DATABASE jwtusers;

CREATE TABLE users(
  user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_name TEXT NOT NULL,
  user_email TEXT NOT NULL UNIQUE,
  user_password TEXT NOT NULL, 
  user_address TEXT NOT NULL
);

SELECT * FROM users;

INSERT INTO users (user_name,user_email,user_password) VALUES ('Bob','bob@email.com','bob');


--psql -U postgres
--\c jwtusers
--\dt
--heroku pg:psql

CREATE TABLE users(
  user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_name TEXT NOT NULL,
  user_email TEXT NOT NULL UNIQUE,
  user_telephone NUMBER,
  user_password TEXT NOT NULL, 
  user_address TEXT NOT NULL
);

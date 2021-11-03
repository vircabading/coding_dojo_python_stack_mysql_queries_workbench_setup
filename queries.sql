-- CREATE

INSERT INTO users (first_name, last_name, handle) VALUES ('Dwayne','Johnson','The Rock');
                                                        -- Creates a new user Dwayne Johnson

-- RETRIEVE

SHOW DATABASES;                                         -- show the databases in mySQL

SHOW TABLES IN twitter;                                 -- show the tables in twitter database

SELECT * FROM users;                                    -- shows all the data in the users table

SELECT first_name FROM users;                           -- gets the first name from all the users

SELECT first_name, last_name FROM users WHERE id = 2 OR id = 3;
                                                        -- Select with Conditionals
                                                        -- This gets the first name and last name of users with id of 2 or 3

SELECT * FROM users WHERE first_name LIKE "%e";         -- gets all the users where their first name ends in e

SELECT * FROM users ORDER BY birthday DESC;             -- gets all the users sorted by birthday with the youngest user at the top

SELECT * FROM users WHERE first_name LIKE "%e" ORDER BY birthday DESC;
                                                        -- gets all the users where their first name ends in e sorted by birthday with the youngest user at the top

-- UPDATE

UPDATE users SET birthday = '1978-10-12' WHERE id = 6;  -- Update the Birthday of User with ID of 6

UPDATE users SET created_at = now(), updated_at=now() WHERE id=6;
                                                        -- update the created at and updated at of User with id of 6 to the current time

-- DELETE

DELETE FROM `twitter`.`users` WHERE (`id` = '6');       -- Delete user with ID of 6 from the users table in twitter database
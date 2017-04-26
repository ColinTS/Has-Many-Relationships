--1
SELECT * FROM
users;

--2
SELECT * FROM
posts
WHERE users_id = 100;

--3
SELECT posts.*, users.first_name, users.last_name FROM
posts
JOIN users ON posts.users_id = users.id
WHERE users_id = 200;

--4

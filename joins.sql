-- --1
-- SELECT * FROM
-- users;

-- --2
-- SELECT * FROM
-- posts
-- WHERE users_id = 100;

-- --3
-- SELECT posts.*, users.first_name, users.last_name FROM
-- posts
-- JOIN users ON posts.users_id = users.id
-- WHERE users_id = 200;

-- --4
-- SELECT posts.*, users.first_name FROM
-- posts
-- JOIN users ON posts.users_id = users.id
-- WHERE first_name = 'Norene'
--     and
--       last_name = 'Schmitt';

-- --5
-- SELECT username FROM
-- users
-- WHERE created_at > '2015-01-01';

-- --6
-- SELECT posts.title, posts.content, users.username
-- FROM posts
-- JOIN users ON posts.users_id = users.id
-- WHERE users.created_at < '2015-01-01';

-- --7
-- SELECT comments.*, posts.title as "Post Title"
-- FROM comments
-- JOIN posts on comments.posts_id = posts.id;

-- --8
-- SELECT comments.*, posts.title as "post_title",
-- posts.url as "post_url",
-- comments.body as "comment_body"
-- FROM comments
-- JOIN posts on comments.posts_id = posts.id;
-- WHERE posts.created_at < '2015-01-01';

-- --9
-- SELECT comments.*, posts.title as "post_title",
-- posts.url as "post_url",
-- comments.body as "comment_body"
-- FROM comments
-- JOIN posts on comments.posts_id = posts.id;
-- WHERE posts.created_at > '2015-01-01';

-- --10
-- SELECT comments.*, posts.title as "post_title",
-- posts.url as "post_url",
-- comments.body as "comment_body"
-- FROM comments
-- JOIN posts on comments.posts_id = posts.id
-- WHERE comments.body LIKE '%USB%';

-- --11
-- SELECT posts.title as "post_title",
-- users.first_name,
-- users.last_name,
-- comments.body as "comment_body"
-- FROM comments
-- JOIN posts on comments.posts_id = posts.id
-- JOIN users ON posts.users_id = users.id
-- WHERE comments.body LIKE '%matrix%';

-- --12
-- SELECT posts.title as "post_title",
-- users.first_name,
-- users.last_name,
-- comments.body as "comment_body"
-- FROM comments
-- JOIN posts on comments.posts_id = posts.id
-- JOIN users ON posts.users_id = users.id
-- WHERE comments.body LIKE '%SSL%'
--     and
--       posts.content LIKE '%dolorum%';

--13
SELECT
users.first_name as "post_author_first_name",
users.last_name as "post_author_last_name",
posts.title as "post_title",
users.username as "comment_author_username",
comments.body as "comment_body"
FROM comments
JOIN posts on comments.posts_id = posts.id
JOIN users ON posts.users_id = users.id
WHERE (comments.body LIKE '%SSL%'
    or
      comments.body LIKE '%firewall%')
    and
      posts.content LIKE '%nemo%';


------ADDITIONAL QUERIES-------

--1
SELECT
posts.id, posts.title, users.id
FROM posts
JOIN users ON posts.users_id = users.id


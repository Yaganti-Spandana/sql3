CREATE TABLE posts (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  likes INTEGER
);
INSERT INTO posts (id, user_id, likes) VALUES
(1, 1, 50),
(2, 1, 120),
(3, 2, 30),
(4, 2, 200),
(5, 3, 10);
SELECT user_id, COUNT(*) 
FROM posts
WHERE COUNT(*) > 1
GROUP BY user_id;
SELECT *
FROM posts
WHERE likes > 50;
SELECT user_id, COUNT(*) AS total_posts
FROM posts
GROUP BY user_id
HAVING COUNT(*) > 1;

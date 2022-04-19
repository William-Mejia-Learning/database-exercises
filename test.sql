DROP DATABASE IF EXISTS blog_app;

CREATE DATABASE IF NOT EXISTS blog_app;
-- pluarlizing rhe name of the table
USE blog_app;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    job_title VARCHAR(100),
    address VARCHAR(200),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

SELECT user, host FROM mysql.user;


#other sql implementations use SHOW

DESCRIBE users;

#DROP TABLE

# DROP TABLE blog_app.users;

CREATE TABLE IF NOT EXISTS posts (

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(100),
    body TEXT,
    PRIMARY KEY (id)

);

CREATE TABLE IF NOT EXISTS labels (
    name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS posts_label (
    post_id INT UNSIGNED NOT NULL,
    label_id INT UNSIGNED NOT NULL
);


INSERT INTO users(name, email, job_title, address)
VALUES ('William Mejia', 'will@gmail.com', 'software engineer', '1234 San Antonio TX'),
('Dane MIller', 'dane@codeup.com', 'instructor', '123 someplace');

INSERT INTO posts(user_id, title, body)
VALUES (1, 'Building Applications', 'This is how blha, blah, blah');

INSERT INTO labels(name) VALUES ('Awesome');
INSERT INTO labels(name) VALUES ('The worst');
INSERT INTO labels(name) VALUES ('Ok');

INSERT INTO posts_label (post_id, label_id) VALUES (1,1), (1,2), (1,3);

# SELECT  p.id, l.name as label_name FROM posts p
# INNER JOIN posts_label pl ON (pl.post_id = p.id)
# INNER JOIN labels l ON (l.id = pl.label_id)
# WHERE p.id = 1;



SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM labels;
SELECT * FROM posts_label;


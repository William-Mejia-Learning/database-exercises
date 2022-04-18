USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;
SELECT * FROM albums;

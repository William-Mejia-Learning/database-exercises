USE codeup_test_db;

SHOW CREATE TABLE albums;

DESCRIBE albums;

SELECT * FROM albums;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt.Peppers Lonely Hearts Club Band';

SELECT 'genre for Nevermind' as caption, genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums WHERE  release_date BETWEEN 1990 AND 1999;

SELECT name FROM albums WHERE sales < 20.0;

SELECT * FROM albums WHERE genre = 'Rock';

SELECT 'rock albums' as caption, a.* FROM albums a WHERE genre like '%Rock%';